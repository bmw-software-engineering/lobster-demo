#include <string>

int sum() {
    // lobster-trace: vanillaEg.make_sum
    return 10 + 5;
}

// Function that is not traced
std::string notTracedFunction() {
    return "I am not being traced";
}

int main() {
    sum();
    notTracedFunction();
    return 0;
}
