#ifndef TRIANGLE_HPP
#define TRIANGLE_HPP

class Triangle {
private:
    double a, b, c;

public:
    Triangle(double sideA, double sideB, double sideC);
    bool isValid() const;
    double calculateAngleA() const;
    double calculateAngleB() const;
    double calculateAngleC() const;
};

#endif
