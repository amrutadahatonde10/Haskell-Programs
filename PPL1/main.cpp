#include <iostream>
#include <vector>
#include "Lagrange.hpp"

int main() {
    int n;
    std::cout << "Enter number of data points: ";
    std::cin >> n;

    std::vector<double> x(n), y(n);
    std::cout << "Enter " << n << " x values:\n";
    for (int i = 0; i < n; ++i)
        std::cin >> x[i];

    std::cout << "Enter " << n << " y values:\n";
    for (int i = 0; i < n; ++i)
        std::cin >> y[i];

    double z;
    std::cout << "Enter the value of z for interpolation: ";
    std::cin >> z;

    LagrangeInterpolator li;
    double result = li.interpolate(x, y, z);
    std::cout << "Interpolated value at " << z << " is " << result << std::endl;

    return 0;
}
