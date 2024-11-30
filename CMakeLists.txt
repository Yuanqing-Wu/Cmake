cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
project(recipe-01 LANGUAGES CXX)

add_library(message STATIC message.h message.cpp)

add_executable(hello_world hello_world.cpp)

target_link_libraries(hello_world message)
