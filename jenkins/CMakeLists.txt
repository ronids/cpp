cmake_minimum_required(VERSION 3.11)

project(Calculator_Project VERSION 1.0.0)
enable_language(CXX)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_CXX_COMPILER "/pathto/g++" )
set(CMAKE_C_COMPILER "/pathto/gcc" )

# Adding -Wall option
add_compile_options(-Wall -Wextra)

# default to Debug builds
set(CMAKE_BUILD_TYPE_INIT Debug)


add_subdirectory(my_math_dir)

add_subdirectory(my_print_dir)


add_executable(calculator main.cpp)


target_link_libraries(calculator PUBLIC my_math  my_print)




