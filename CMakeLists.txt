cmake_minimum_required (VERSION 3.13)

# Define the project
project(REST-api)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_C_COMPILER_FORCED TRUE)

# define target paths
set(TARGET_ROOT_DIR ${PROJECT_SOURCE_DIR}/build/${CMAKE_BUILD_TYPE})

# Core source directory
add_subdirectory(app)