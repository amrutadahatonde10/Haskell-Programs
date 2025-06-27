#include <iostream>
#include "NumberOperations.hpp"

int main() {
    int a, b;
    std::cout << "Enter two positive integers: ";
    std::cin >> a >> b;

    if (a <= 0 || b <= 0) {
        std::cout << "Both numbers must be positive." << std::endl;
        return 1;
    }

    NumberOperations op;
    std::cout << "GCD: " << op.gcd(a, b) << "\n";
    std::cout << "LCM: " << op.lcm(a, b) << "\n";

    return 0;
}

