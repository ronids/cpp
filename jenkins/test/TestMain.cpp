#include <iostream>

#include "addition.h"
#include "division.h"
#include "print_result.h"
#include <unistd.h>

int main(){

float first_no, second_no, result_add, result_div;

result_add = addition(first_no , second_no);
result_div = division(first_no , second_no);

print_result("Addition", result_add);
print_result("Division", result_div);
//std::cout<< "Addition result:\t"<< result_add<< "\nDivision result:\t"<< result_div<< "\n";

return 0;

}
