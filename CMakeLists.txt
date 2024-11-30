cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
project(recipe-01 LANGUAGES CXX)

set(USE_LIBRARY OFF)
message(STATUS "Compile sources into a library? ${USE_LIBRARY}")
set(BUILD_SHARED_LIBS OFF)

list(APPEND _sources message.h message.cpp)

if(USE_LIBRARY)
    # add_library will create a static library
    # since BUILD_SHARED_LIBS is OFF
    add_library(message ${_sources})
    add_executable(hello_world hello_world.cpp)
    target_link_libraries(hello_world message)
else()
    add_executable(hello_world hello_world.cpp ${_sources})
endif()
