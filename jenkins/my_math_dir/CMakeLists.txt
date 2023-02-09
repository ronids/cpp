add_library(my_math
src/addition.cpp
src/division.cpp)

# Para evitar usar ---->  #include "../include/addition.h" 
# y solo usar ---> #include "addition.h"
# Usamos la funcion de abajo
target_include_directories(my_math PUBLIC include)


