#include <gtest/gtest.h>
#include "../source_code_cpp/cpp_software.cpp"

class TestSoftware : public ::testing::Test {};

TEST(TestSoftware, TestSum) {
    // lobster-trace: vanillaEg.make_sum
    ASSERT_EQ(sum(), 15);
}

TEST(TestSoftware, TestNotTracedFunction) {
    ASSERT_EQ(notTracedFunction(), "I am not being traced");
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
