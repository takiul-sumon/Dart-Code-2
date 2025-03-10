#include <iostream>
#include <string>

int main() {
    std::string s;
    std::getline(std::cin, s); 

    std::string result;
    for (size_t i = 0; i < s.length(); i++) {
        result += s[i];
        if ((i + 1) % 2 == 0 && i + 2 < s.length()) {
            result += 'x';  
        }
    }

    std::cout << result << std::endl;  
    return 0;
}
