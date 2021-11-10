cmake_minimum_required (VERSION 3.10)

# openssl dependency
include(${CMAKE_SOURCE_DIR}/third_party/openssl.cmake)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_C_COMPILER_FORCED TRUE)

add_executable(program main.cc)

if (APPLE) 
  find_package(Boost REQUIRED)
endif()

target_include_directories(program PRIVATE 
  /usr/local/include
  $<$<BOOL:${APPLE}>:${Boost_INCLUDE_DIRS}>
  ${PROJECT_SOURCE_DIR}/third_party/openssl/include
)

target_link_directories(program PRIVATE /usr/local/lib)

# Check gtest library
find_library(CPPREST NAMES cpprest)

target_link_libraries(program PRIVATE 
  ${CMAKE_BINARY_DIR}/third_party/libssl.a
  ${CPPREST}
)
