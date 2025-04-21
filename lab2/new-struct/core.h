#ifndef CORE_H
#define CORE_H

void init_pos(double* rxyz, const double rho);
void init_vel(double* vxyz, double* temp, double* ekin);
void forces(double* rf, double* epot, double* pres,
            const double* temp, const double rho, const double V, const double L);
void update_rf(double* rf, double* epot, double* pres,
                const double* temp, const double rho, const double V);
void velocity_verlet(double* rf, double* vxyz, double* epot,
                     double* ekin, double* pres, double* temp, const double rho,
                     const double V, const double L);

static inline int gr(int i) {
    int offset = i % 3;
    return (i - offset) * 2 + offset;
}

static inline int gf(int i) {
    int offset = i % 3;
    return 3 + (i - offset) * 2 + offset;
}


#endif
