#include "Lagrange.hpp"

double LagrangeInterpolator::interpolate(const std::vector<double>& x, const std::vector<double>& y, double z) {
    double result = 0.0;
    int n = x.size();
    for (int i = 0; i < n; ++i) {
        double term = y[i];
        for (int j = 0; j < n; ++j) {
            if (j != i)
                term *= (z - x[j]) / (x[i] - x[j]);
        }
        result += term;
    }
    return result;
}
