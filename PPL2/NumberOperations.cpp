#include "NumberOperations.hpp"

int NumberOperations::gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
}

int NumberOperations::lcm(int a, int b) {
    return (a * b) / gcd(a, b);
}
   