# 1 "test.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 425 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test.c" 2
static double minimum_image(double cordi, const double cell_length)
{


    if (cordi <= -0.5 * cell_length) {
        cordi += cell_length;
    } else if (cordi > 0.5 * cell_length) {
        cordi -= cell_length;
    }
    return cordi;
}
int main(void) {
    double a,b;
    a = 1.0;
    b= 2.0;
    minimum_image(a, b);
}
