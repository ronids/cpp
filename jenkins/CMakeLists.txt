cmake_minimum_required(VERSION 3.22)

project(Calculator_Project VERSION 1.0.0)
enable_language(CXX)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#set(CMAKE_CXX_COMPILER "/usr/bin/g++" )
#set(CMAKE_C_COMPILER "/usr/bin/gcc" )

add_subdirectory(my_math)
add_subdirectory(my_print)

add_executable(calculator main.cpp)
target_link_libraries(calculator PUBLIC my_math  my_print)

# TESTING DIR
add_subdirectory(test)




