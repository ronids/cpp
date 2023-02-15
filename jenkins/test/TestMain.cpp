#include <iostream>
#include <gtest/gtest.h>

#include "../my_math/include/addition.h"
#include "../my_math/include/division.h"
#include "../my_print/include/print_result.h"

TEST(MultiplyTests, Additioning)
{
    const auto expected = 5;
    const auto actual = addition(3, 2);
    ASSERT_EQ(actual, expected);
}

TEST(MultiplyTests, Divisioning)
{
    const auto expected = 3;
    const auto actual = division(6, 2);
    ASSERT_EQ(actual, expected);
}

int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
