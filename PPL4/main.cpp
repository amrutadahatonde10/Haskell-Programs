#include <iostream>
#include <iomanip>
#include "Triangle.hpp"

int main() {
    double a, b, c;
    std::cout << "Enter three sides of the triangle: ";
    std::cin >> a >> b >> c;

    Triangle t(a, b, c);
    if (!t.isValid()) {
        std::cout << "Invalid triangle sides." << std::endl;
        return 1;
    }

    std::cout << std::fixed << std::setprecision(2);
    std::cout << "Angles of the triangle:\n";
    std::cout << "Angle A: " << t.calculateAngleA() << " degrees\n";
    std::cout << "Angle B: " << t.calculateAngleB() << " degrees\n";
    std::cout << "Angle C: " << t.calculateAngleC() << " degrees\n";

    return 0;
}
