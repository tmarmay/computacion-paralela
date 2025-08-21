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
int main(void) {
    double a,b;
    a = 1.0;
    b= 2.0;
    minimum_image(a, b);
}
