#include <iostream>
#include "LeapYearChecker.hpp"

int main() {
    int year;
    std::cout << "Enter a year: ";
    std::cin >> year;

    LeapYearChecker checker;
    if (checker.isLeapYear(year)) {
        std::cout << year << " is a leap year.\n";
    } else {
        std::cout << year << " is not a leap year.\n";
    }

    return 0;
}
