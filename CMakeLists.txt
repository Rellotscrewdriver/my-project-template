cmake_minimum_required(VERSION 3.15)
project(template)

add_library(dog src/dog.cpp)
target_include_directories(dog PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(template src/main.cpp)
target_include_directories(template PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(template PUBLIC dog)

add_subdirectory(libs/googletest)
add_subdirectory(tests)
