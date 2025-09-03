#include "calculator.h"
#include <gtest/gtest.h>

TEST(CalculatorTest, Add) {
    EXPECT_DOUBLE_EQ(Calculator::add(3, 2), 5);
    EXPECT_DOUBLE_EQ(Calculator::add(-1, 1), 0);
}

TEST(CalculatorTest, Subtract) {
    EXPECT_DOUBLE_EQ(Calculator::subtract(5, 3), 2);
    EXPECT_DOUBLE_EQ(Calculator::subtract(0, 4), -4);
}

TEST(CalculatorTest, Multiply) {
    EXPECT_DOUBLE_EQ(Calculator::multiply(4, 3), 12);
    EXPECT_DOUBLE_EQ(Calculator::multiply(-2, 3), -6);
}

TEST(CalculatorTest, Divide) {
    EXPECT_DOUBLE_EQ(Calculator::divide(10, 2), 5);
    EXPECT_DOUBLE_EQ(Calculator::divide(7, 2), 3.5);

    EXPECT_THROW(Calculator::divide(5, 0), std::invalid_argument);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
