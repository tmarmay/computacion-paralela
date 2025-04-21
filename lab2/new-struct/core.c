#include "core.h"
#include "parameters.h"

#include <math.h>
#include <stdlib.h> // rand()
#include <immintrin.h> // AVX
#include <stdio.h>

#define ECUT (4.0 * (pow(RCUT, -12) - pow(RCUT, -6)))


void init_pos(double* rxyz, const double rho)
{
    // inicialización de las posiciones de los átomos en un cristal FCC

    double a = cbrt(4.0 / rho);
    int nucells = ceil(cbrt((double)N / 4.0));
    int idx = 0;

    for (int i = 0; i < nucells; i++) {
        for (int j = 0; j < nucells; j++) {
            for (int k = 0; k < nucells; k++) {
                rxyz[gr(idx + 0)] = i * a; // x
                rxyz[gr(idx + 1)] = j * a; // y
                rxyz[gr(idx + 2)] = k * a; // z
                    // del mismo átomo
                rxyz[gr(idx + 3)] = (i + 0.5) * a;
                rxyz[gr(idx + 4)] = (j + 0.5) * a;
                rxyz[gr(idx + 5)] = k * a;

                rxyz[gr(idx + 6)] = (i + 0.5) * a;
                rxyz[gr(idx + 7)] = j * a;
                rxyz[gr(idx + 8)] = (k + 0.5) * a;

                rxyz[gr(idx + 9)] = i * a;
                rxyz[gr(idx + 10)] = (j + 0.5) * a;
                rxyz[gr(idx + 11)] = (k + 0.5) * a;

                idx += 12;
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

// Funcion optmizada que genero mas impacto en el rendimiento
// static double minimum_image(double cordi, const double cell_length)
// {
//     // imagen más cercana
//     if (cordi <= -0.5 * cell_length) {
//         cordi += cell_length;
//     } else if (cordi > 0.5 * cell_length) {
//         cordi -= cell_length;
//     }
//     return cordi;
// }

static __m256d minimum_image(__m256d v_cordi, const __m256d cell_length)
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

void forces(double* rf, double* epot, double* pres,
            const double* temp, const double rho, const double V, const double L)
{
    // Cargar L en un registro de 256
    __m256d L256 = _mm256_set1_pd(L);

    // calcula las fuerzas LJ (12-6)
    for (int i = 0; i < 3 * N; i++) {
        rf[gf(i)] = 0.0;
    } // En O2 se hace memeset

    double pres_vir = 0.0;
    double rcut2 = RCUT * RCUT;
    *epot = 0.0;

    for (int i = 0; i < 3 * (N - 1); i += 3) {
        
        //Trae 4 numeros y solo usamos 3 por como estaba contruida las iteraciones
        __m256d xyz_i = _mm256_loadu_pd(&rf[gr(i)]);
        for (int j = i + 3; j < 3 * N; j += 3) {

            __m256d xyz_j = _mm256_loadu_pd(&rf[gr(j)]);

            __m256d r_xyz = _mm256_sub_pd(xyz_i, xyz_j);
            
            r_xyz = minimum_image(r_xyz, L256);

            double rx = r_xyz[0];  
            double ry = r_xyz[1];  
            double rz = r_xyz[2];

            double rij2 = rx * rx + ry * ry + rz * rz;

            if (rij2 <= rcut2) {
                double r2inv = (double)(1.0) / rij2;
                double r6inv = r2inv * r2inv * r2inv;
        
                double fr = 24.0 * r2inv * r6inv * (2.0 * r6inv - 1.0);
        
                rf[gf(i + 0)] += fr * rx;
                rf[gf(i + 1)] += fr * ry;
                rf[gf(i + 2)] += fr * rz;
        
                rf[gf(j + 0)] -= fr * rx;
                rf[gf(j + 1)] -= fr * ry;
                rf[gf(j + 2)] -= fr * rz;
        
                *epot += 4.0 * r6inv * (r6inv - 1.0) - ECUT;
                pres_vir += fr * rij2;
            }
        }
    }
    pres_vir /= (V * 3.0);
    *pres = *temp * rho + pres_vir;
}

static __m256d pbc(__m256d cordi_m, const __m256d cell_length_m)
{
    __m256d zero_m = _mm256_set1_pd(0.0);

    __m256d mask1_m = _mm256_cmp_pd(cordi_m, zero_m ,_CMP_LE_OQ);
    __m256d mask2_m = _mm256_cmp_pd(cordi_m, cell_length_m ,_CMP_GT_OQ);

    __m256d result1 = _mm256_add_pd(cordi_m, cell_length_m);
    __m256d result_cordi = _mm256_blendv_pd(cordi_m, result1, mask1_m);

    __m256d result2 = _mm256_sub_pd(result_cordi, cell_length_m);
    result_cordi = _mm256_blendv_pd(result_cordi, result2, mask2_m);

    return result_cordi;
}


void velocity_verlet(double* rf, double* vxyz, double* epot,
                     double* ekin, double* pres, double* temp, const double rho,
                     const double V, const double L)
{

    __m256d dt_m1 = _mm256_set1_pd(DT);
    __m256d dt_m = _mm256_set1_pd(DT * 0.5);
    __m256d dt_m2 = _mm256_set1_pd((DT*DT) * 0.5);
    __m256d L_m = _mm256_set1_pd(L);

    for (int i = 0; i < 3 * N; i += 3) {
        __m256d vxyz_m = _mm256_loadu_pd(&vxyz[i]);
        __m256d fxyz_m = _mm256_loadu_pd(&rf[gf(i)]);
        __m256d rxyz_m = _mm256_loadu_pd(&rf[gr(i)]);

        __m256d result = _mm256_add_pd(_mm256_mul_pd(vxyz_m, dt_m1), _mm256_mul_pd(fxyz_m, dt_m2));
        rxyz_m = _mm256_add_pd(rxyz_m, result);
        
        rxyz_m = pbc(rxyz_m, L_m);

        rf[gr(i + 0)] = rxyz_m[0];  
        rf[gr(i + 1)] = rxyz_m[1];  
        rf[gr(i + 2)] = rxyz_m[2];
        
        vxyz_m = _mm256_add_pd(vxyz_m, _mm256_mul_pd(fxyz_m, dt_m));

        vxyz[i + 0] = vxyz_m[0];  
        vxyz[i + 1] = vxyz_m[1];  
        vxyz[i + 2] = vxyz_m[2];
    }

    forces(rf, epot, pres, temp, rho, V, L); // actualizo fuerzas

    double sumv2 = 0.0;
    for (int i = 0; i < 3 * N; i += 3) { // actualizo velocidades
        vxyz[i + 0] += 0.5 * rf[gf(i + 0)] * DT;
        vxyz[i + 1] += 0.5 * rf[gf(i + 1)] * DT;
        vxyz[i + 2] += 0.5 * rf[gf(i + 2)] * DT;

        sumv2 += vxyz[i + 0] * vxyz[i + 0] + vxyz[i + 1] * vxyz[i + 1]
            + vxyz[i + 2] * vxyz[i + 2];
    }

    *ekin = 0.5 * sumv2;
    *temp = sumv2 / (3.0 * N);
}
