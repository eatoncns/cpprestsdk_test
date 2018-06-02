cmake_minimum_required(VERSION 3.7)
project(main)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

find_package(Boost COMPONENTS system REQUIRED)
find_package(cpprestsdk REQUIRED)

add_executable(main src/main.cpp)
target_link_libraries(main PRIVATE cpprestsdk::cpprest ${Boost_SYSTEM_LIBRARY})
