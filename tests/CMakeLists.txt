enable_testing()
set(sources test.cpp)
add_executable(utest ${sources})
target_link_libraries(utest PUBLIC GTest::gtest_main)
