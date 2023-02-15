include(FetchContent)

# Adding -Wall option
add_compile_options(-Wall -Wextra)
set(CMAKE_BUILD_TYPE_INIT Debug)
enable_testing()

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.11.0
)
FetchContent_MakeAvailable(googletest)
add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest_main)

add_executable(test TestMain.cpp)

target_link_libraries(test PUBLIC 
GTest::GTest 
my_math my_print)

add_test(multiply_gtest test)






