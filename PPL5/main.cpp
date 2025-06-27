#include <iostream>
#include "Formatter.hpp"

int main() {
    Formatter f;
    double number;

    std::cout << "Enter a number: ";
    while (std::cin >> number) {
        std::string formatted = f.format(number);
        std::cout << "Formatted output: " << formatted << std::endl;

        std::cout << "\nEnter another number (or press Ctrl+C to exit): ";
    }

    return 0;
}
