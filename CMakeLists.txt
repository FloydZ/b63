cmake_minimum_required(VERSION 3.20.1)
project(b63)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 11)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

set(LINK_FLAGS m)

include_directories(include)
add_subdirectory(examples)