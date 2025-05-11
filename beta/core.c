#include "core.h"
#include "parameters.h"

#include <math.h>
#include <stdlib.h> // rand()
#include <immintrin.h> // AVX

#define ECUT (4.0 * (pow(RCUT, -12) - pow(RCUT, -6)))

// static inline void init_forces(const double* rxyz) {
//     int j = 0;
//     for (int i = 0; i < 3 * N; i += 3) {
//         XI[j] = rxyz[i + 0];
//         YI[j] = rxyz[i + 1];
//         ZI[j] = rxyz[i + 2]; 
//         j++;
//     }
// }

void init_pos(double* XI, double* YI, double* ZI, const double rho)
{
    // inicialización de las posiciones de los átomos en un cristal FCC

    double a = cbrt(4.0 / rho);
    int nucells = ceil(cbrt((double)N / 4.0));
    int idx = 0;

    for (int i = 0; i < nucells; i++) {
        for (int j = 0; j < nucells; j++) {
            for (int k = 0; k < nucells; k++) {
                XI[idx] = i * a; // x
                YI[idx] = j * a; // y
                ZI[idx] = k * a; // z
                    // del mismo átomo
                XI[idx + 1] = (i + 0.5) * a;
                YI[idx + 1] = (j + 0.5) * a;
                ZI[idx + 1] = k * a;

                XI[idx + 2] = (i + 0.5) * a;
                YI[idx + 2] = j * a;
                ZI[idx + 2] = (k + 0.5) * a;

                XI[idx + 3] = i * a;
                YI[idx + 3] = (j + 0.5) * a;
                ZI[idx + 3] = (k + 0.5) * a;

                idx += 4;
            }
        }
    }
}

void init_vel(double* vxyz, double* temp, double* ekin)
{
    // inicialización de velocidades aleatorias

    double sf, sumvx = 0.0, sumvy = 0.0, sumvz = 0.0, sumv2 = 0.0;

    for (int i = 0; i < 3 * N; i += 3) {
        vxyz[i + 0] = rand() / (double)RAND_MAX - 0.5;
        vxyz[i + 1] = rand() / (double)RAND_MAX - 0.5;
        vxyz[i + 2] = rand() / (double)RAND_MAX - 0.5;

        sumvx += vxyz[i + 0];
        sumvy += vxyz[i + 1];
        sumvz += vxyz[i + 2];
        sumv2 += vxyz[i + 0] * vxyz[i + 0] + vxyz[i + 1] * vxyz[i + 1]
            + vxyz[i + 2] * vxyz[i + 2];
    }

    sumvx /= (double)N;
    sumvy /= (double)N;
    sumvz /= (double)N;
    *temp = sumv2 / (3.0 * N);
    *ekin = 0.5 * sumv2;
    sf = sqrt(T0 / *temp);

    for (int i = 0; i < 3 * N; i += 3) { // elimina la velocidad del centro de masa
        // y ajusta la temperatura
        vxyz[i + 0] = (vxyz[i + 0] - sumvx) * sf;
        vxyz[i + 1] = (vxyz[i + 1] - sumvy) * sf;
        vxyz[i + 2] = (vxyz[i + 2] - sumvz) * sf;
    }
}


static double minimum_image(double cordi, const double cell_length)
{
    // imagen más cercana

    if (cordi <= -0.5 * cell_length) {
        cordi += cell_length;
    } else if (cordi > 0.5 * cell_length) {
        cordi -= cell_length;
    }
    return cordi;
}

static __m256d minimum_image2(__m256d v_cordi, const __m256d cell_length)
{
    // Eqivalente 0.5 * cell_length)
    __m256d v_half_cell_length = _mm256_mul_pd(cell_length, _mm256_set1_pd(0.5));

    // Máscara para `cordi <= -0.5 * cell_length`
    __m256d mask1 = _mm256_cmp_pd(v_cordi, _mm256_sub_pd(_mm256_setzero_pd(), v_half_cell_length), _CMP_LE_OQ);

    // Máscara para `cordi > 0.5 * cell_length`
    __m256d mask2 = _mm256_cmp_pd(v_cordi, v_half_cell_length, _CMP_GT_OQ);\

    // Sumar cell_length donde `mask1` es verdadera
    __m256d result1 = _mm256_add_pd(v_cordi, cell_length);
    __m256d result_cordi = _mm256_blendv_pd(v_cordi, result1, mask1);

    // Restar cell_length donde `mask2` es verdadera
    __m256d result2 = _mm256_sub_pd(result_cordi, cell_length);
    result_cordi = _mm256_blendv_pd(result_cordi, result2, mask2);

    return result_cordi;
}


void forces(const double* XI, const double* YI, const double* ZI, double* fxyz, double* epot, double* pres,
            const double* temp, const double rho, const double V, const double L)
{
    __m256d L256 = _mm256_set1_pd(L);
    
    // calcula las fuerzas LJ (12-6)
    for (int i = 0; i < 3 * N; i++) {
        fxyz[i] = 0.0;
    }
    double pres_vir = 0.0;
    double rcut2 = RCUT * RCUT;
    *epot = 0.0;

    //init_forces(rxyz); 

    for (int i = 0; i < N - 1; i += 1) {

        __m256d xi = _mm256_set1_pd(XI[i]); //xi1
        __m256d yi = _mm256_set1_pd(YI[i]);
        __m256d zi = _mm256_set1_pd(ZI[i]);
        int last_j = i+1;
        for (int j = i + 1; N - j >= 3; j += 3) {

            __m256d xj = _mm256_loadu_pd(&XI[j]); //xi1 xi2 xi3
            __m256d yj = _mm256_loadu_pd(&YI[j]);
            __m256d zj = _mm256_loadu_pd(&ZI[j]);

            __m256d rx_v = _mm256_sub_pd(xi, xj);
            __m256d ry_v = _mm256_sub_pd(yi, yj);
            __m256d rz_v = _mm256_sub_pd(zi, zj);

            rx_v = minimum_image2(rx_v, L256);
            ry_v = minimum_image2(ry_v, L256);
            rz_v = minimum_image2(rz_v, L256);
            
            for (int k = 0; k < 3; k++) {
                double rx = rx_v[k];
                double ry = ry_v[k];
                double rz = rz_v[k];

                double rij2 = rx * rx + ry * ry + rz * rz;
    
                if (rij2 <= rcut2) {
                    double r2inv = 1.0 / rij2;
                    double r6inv = r2inv * r2inv * r2inv;
    
                    double fr = 24.0 * r2inv * r6inv * (2.0 * r6inv - 1.0);
    
                    fxyz[( 3 * i ) + 0] += fr * rx;
                    fxyz[( 3 * i ) + 1] += fr * ry;
                    fxyz[( 3 * i ) + 2] += fr * rz;
    
                    fxyz[(3 * (j + k)) + 0] -= fr * rx;
                    fxyz[(3 * (j + k)) + 1] -= fr * ry;
                    fxyz[(3 * (j + k)) + 2] -= fr * rz;
    
                    *epot += 4.0 * r6inv * (r6inv - 1.0) - ECUT;
                    pres_vir += fr * rij2;
                }
            }
            last_j = j + 3;
        }
        //sobrantes
        for (int j = last_j; j < N; j += 1) {
            double xi = XI[i];
            double yi = YI[i];
            double zi = ZI[i];
            //__m256d xyz_i = _mm256_loadu_pd(&rxyz[3 * i]);
            __m256d xyz_i = _mm256_set_pd(0.0, zi, yi, xi);
    
            double xj = XI[j];
            double yj = YI[j];
            double zj = ZI[j];
            //__m256d xyz_j = _mm256_loadu_pd(&rxyz[3 * j]);
            __m256d xyz_j = _mm256_set_pd(0.0, zj, yj, xj);


            // distancia mínima entre r_i y r_j
            // double rx = xi - xj;
            // double ry = yi - yj;
            // double rz = zi - zj;
            __m256d r_xyz = _mm256_sub_pd(xyz_i, xyz_j);
            
            // rx = minimum_image(rx, L);
            // ry = minimum_image(ry, L);
            // rz = minimum_image(rz, L);

            r_xyz = minimum_image2(r_xyz, L256);

            double rx = r_xyz[0];  
            double ry = r_xyz[1];  
            double rz = r_xyz[2];

            double rij2 = rx * rx + ry * ry + rz * rz;

            if (rij2 <= rcut2) {
                double r2inv = 1.0 / rij2;
                double r6inv = r2inv * r2inv * r2inv;

                double fr = 24.0 * r2inv * r6inv * (2.0 * r6inv - 1.0);

                fxyz[( 3 * i ) + 0] += fr * rx;
                fxyz[( 3 * i ) + 1] += fr * ry;
                fxyz[( 3 * i ) + 2] += fr * rz;

                fxyz[(3 * j) + 0] -= fr * rx;
                fxyz[(3 * j) + 1] -= fr * ry;
                fxyz[(3 * j) + 2] -= fr * rz;

                *epot += 4.0 * r6inv * (r6inv - 1.0) - ECUT;
                pres_vir += fr * rij2;
            }
        }
    }
    pres_vir /= (V * 3.0);
    *pres = *temp * rho + pres_vir;

    //solve_last_items(rxyz, fxyz, epot, pres, temp, rho, V, L, pres_vir, rcut2);
}


static double pbc(double cordi, const double cell_length)
{
    // condiciones periodicas de contorno coordenadas entre [0,L)
    if (cordi <= 0) {
        cordi += cell_length;
    } else if (cordi > cell_length) {
        cordi -= cell_length;
    }
    return cordi;
}


void velocity_verlet(double* XI, double* YI, double* ZI, double* vxyz, double* fxyz, double* epot,
                     double* ekin, double* pres, double* temp, const double rho,
                     const double V, const double L)
{

    for (int i = 0; i < N; i += 1) { // actualizo posiciones
        XI[i] += vxyz[3*i + 0] * DT + 0.5 * fxyz[3*i + 0] * DT * DT;
        YI[i] += vxyz[3*i + 1] * DT + 0.5 * fxyz[3*i + 1] * DT * DT;
        ZI[i] += vxyz[3*i + 2] * DT + 0.5 * fxyz[3*i + 2] * DT * DT;

        XI[i] = pbc(XI[i], L);
        YI[i] = pbc(YI[i], L);
        ZI[i] = pbc(ZI[i], L);

        vxyz[3*i + 0] += 0.5 * fxyz[3*i + 0] * DT;
        vxyz[3*i + 1] += 0.5 * fxyz[3*i + 1] * DT;
        vxyz[3*i + 2] += 0.5 * fxyz[3*i + 2] * DT;
    }

    forces(XI, YI, ZI, fxyz, epot, pres, temp, rho, V, L); // actualizo fuerzas

    double sumv2 = 0.0;
    for (int i = 0; i < 3 * N; i += 3) { // actualizo velocidades
        vxyz[i + 0] += 0.5 * fxyz[i + 0] * DT;
        vxyz[i + 1] += 0.5 * fxyz[i + 1] * DT;
        vxyz[i + 2] += 0.5 * fxyz[i + 2] * DT;

        sumv2 += vxyz[i + 0] * vxyz[i + 0] + vxyz[i + 1] * vxyz[i + 1]
            + vxyz[i + 2] * vxyz[i + 2];
    }

    *ekin = 0.5 * sumv2;
    *temp = sumv2 / (3.0 * N);
}
