#include "Formatter.hpp"
#include <iomanip>
#include <sstream>

std::string Formatter::format(double number) {
    std::ostringstream oss;
    oss << std::fixed << std::setprecision(5) << number;
    std::string str = oss.str();

    size_t dotPos = str.find('.');
    std::string intPart = str.substr(0, dotPos);
    std::string fracPart = str.substr(dotPos + 1);

    // Remove leading/trailing zeros
    intPart.erase(0, intPart.find_first_not_of('0'));
    fracPart.erase(fracPart.find_last_not_of('0') + 1);

    std::string result = fracPart + "#." + intPart;
    return result;
}
