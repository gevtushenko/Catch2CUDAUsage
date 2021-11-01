cmake_minimum_required(VERSION 3.20)
project(Catch2CUDAUsage CXX CUDA)

set(CMAKE_CUDA_STANDARD 17)

add_executable(Catch2CUDAUsage main.cu test.cu)

set_target_properties(Catch2CUDAUsage PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
add_subdirectory(Catch2)
target_link_libraries(Catch2CUDAUsage PRIVATE Catch2::Catch2)
