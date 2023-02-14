cmake_minimum_required(VERSION 3.11)

# Adding -Wall option
add_compile_options(-Wall -Wextra)

# default to Debug builds
set(CMAKE_BUILD_TYPE_INIT Debug)


add_subdirectory(my_math_dir)
add_subdirectory(my_print_dir)


# testing binary
add_executable(cpp_test TestMain.cpp)
target_link_libraries(calculator PUBLIC my_math  my_print)


# enable testing functionality
enable_testing()


# define tests

add_test(

  NAME cpp_test

  COMMAND $<TARGET_FILE:cpp_test>

  )
