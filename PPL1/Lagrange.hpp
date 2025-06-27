#ifndef LAGRANGE_HPP
#define LAGRANGE_HPP

#include <vector>

class LagrangeInterpolator {
public:
    double interpolate(const std::vector<double>& x, const std::vector<double>& y, double z);
};

#endif
