cmake_minimum_required(VERSION 3.20)
project(Catch2CUDAUsage CUDA)

set(CMAKE_CUDA_STANDARD 17)

add_executable(Catch2CUDAUsage main.cu)

set_target_properties(Catch2CUDAUsage PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
