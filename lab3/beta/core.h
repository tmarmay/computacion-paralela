#ifndef CORE_H
#define CORE_H

void init_pos(double* XI, double* YI, double* ZI, const double rho);
void init_vel(double* vxyz, double* temp, double* ekin);
void forces(const double* XI, const double* YI, const double* ZI, double* fxyz, double* epot, double* pres,
            const double* temp, const double rho, const double V, const double L);
void velocity_verlet(double* XI, double* YI, double* ZI, double* vxyz, double* fxyz, double* epot,
                     double* ekin, double* pres, double* temp, const double rho,
                     const double V, const double L);

#endif
