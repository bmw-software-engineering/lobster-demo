#include <gtest/gtest.h>
#include "../source_code_cpp/cpp_software2.cpp"

class TestSoftware2 : public ::testing::Test {};

TEST(TestSoftware2, TestIntValue) {
    // lobster-trace: vanillaEg.output_value_int
    ASSERT_EQ(intValue(), 10);
}

TEST(TestSoftware2, TestDecValue) {
    // lobster-trace: vanillaEg.output_value_decimal
    ASSERT_EQ(decValue(), 10.0);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
