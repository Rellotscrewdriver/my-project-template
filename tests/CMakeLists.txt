cmake_minimum_required(VERSION 3.12)

set(test)

set(sources test.cpp)

add_executable(utest ${sources})

target_link_libraries(utest PUBLIC gtest_main gmock_main)


add_test(NAME utest COMMAND utest)
