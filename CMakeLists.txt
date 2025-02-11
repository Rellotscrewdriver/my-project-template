cmake_minimum_required(VERSION 3.15)
set(CMAKE_TOOLCHAIN_FILE "libs/vcpkg/scripts/buildsystems/vcpkg.cmake")

project(template)
find_package(fmt)


add_library(dog src/dog.cpp)
target_include_directories(dog PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(template src/main.cpp)
target_include_directories(template PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(template PUBLIC dog)
target_link_libraries(template PRIVATE fmt::fmt)

add_subdirectory(libs/googletest)
add_subdirectory(tests)
