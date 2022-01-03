#include <iostream>
#include "utils.h"

int main() {
    std::string str = "hello";
    Utils::print(str);
    print(str);
    std::cout << "hello world!" << std::endl;
    
    return 0;
}