#include "Triangle.hpp"
#include <cmath>

Triangle::Triangle(double sideA, double sideB, double sideC)
    : a(sideA), b(sideB), c(sideC) {}

bool Triangle::isValid() const {
    return (a + b > c) && (a + c > b) && (b + c > a);
}

double Triangle::calculateAngleA() const {
    return acos((b*b + c*c - a*a) / (2*b*c)) * (180.0 / M_PI);
}

double Triangle::calculateAngleB() const {
    return acos((a*a + c*c - b*b) / (2*a*c)) * (180.0 / M_PI);
}

double Triangle::calculateAngleC() const {
    return 180.0 - calculateAngleA() - calculateAngleB();
}
