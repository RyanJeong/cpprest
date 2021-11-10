
# Curl
#set(OPENSSL_TARGET linux-x86_64)

if (APPLE)
    if (CMAKE_SYSTEM_PROCESSOR STREQUAL arm64)
        set(OPENSSL_TARGET darwin64-arm64-cc)
    else()
        set(OPENSSL_TARGET darwin64-x86_64-cc)
    endif()
endif()

if (CROSS_COMPILE_ENABLED)
    if ( ${CROSS_PREFIX} EQUAL "arm-linux-gnueabihf" )
        set(LIBCRYPTO_CONFIGURE_CMD LD=ld CC=\"\" ./Configure linux-armv4 --cross-compile-prefix=${CROSS_PREFIX}-)
    elseif (ANDROID_ENABLED)
        set(PATH_CMD PATH=/home/jenkins/android-ndk-r22/toolchains/llvm/prebuilt/linux-x86_64/bin:$ENV{PATH})
        set(LIBCRYPTO_CONFIGURE_CMD ANDROID_NDK_ROOT=/home/jenkins/android-ndk-r22/ CC=${CMAKE_C_COMPILER} CXX=${CMAKE_CXX_COMPILER} AR=/home/jenkins/arm-android-toolchain/bin/llvm-ar AS=${CMAKE_C_COMPILER} LD=/home/jenkins/arm-android-toolchain/bin/ld RANLIB=/home/jenkins/arm-android-toolchain/bin/llvm-ranlib STRIP=/home/jenkins/arm-android-toolchain/bin/llvm-strip 
        ${PATH_CMD} ./Configure android-arm64 -D__ANDROID_API__=30)
    endif()
else()
    set(LIBCRYPTO_CONFIGURE_CMD CC=${CMAKE_C_COMPILER} CXX=${CMAKE_CXX_COMPILER} ./Configure ${OPENSSL_TARGET})
endif()

add_custom_command(OUTPUT ${CMAKE_BINARY_DIR}/third_party/libcrypto.a
    COMMAND mkdir -p ${CMAKE_BINARY_DIR}/third_party
    COMMAND ${LIBCRYPTO_CONFIGURE_CMD} --prefix=${CMAKE_BINARY_DIR}/third_party/openssl no-tests
    COMMAND perl configdata.pm --dump
    COMMAND ${PATH_CMD} make
    COMMAND make install
    COMMAND cp `find ${CMAKE_BINARY_DIR}/third_party/openssl -name '*.a'` ${CMAKE_BINARY_DIR}/third_party/
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/third_party/openssl
)

add_custom_target(libcrypto DEPENDS ${CMAKE_BINARY_DIR}/third_party/libcrypto.a)