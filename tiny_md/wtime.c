#include "wtime.h"

#define _POSIX_C_SOURCE 199309L
#include <time.h>

double wtime(void)
{
    struct timespec ts;
    clock_gettime(_CLOCK_MONOTONIC, &ts);

    return 1e-9 * ts.tv_nsec + (double)ts.tv_sec;
}
