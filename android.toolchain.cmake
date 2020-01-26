# 安装 mingw-w64
# sudo apt-get install mingw-w64
# windows 64位操作系统
# -DCMAKE_TOOLCHAIN_FILE=windows.toolchain.cmake
# windows 32位操作系统
# -DCMAKE_TOOLCHAIN_FILE=windows.toolchain.cmake -DUSE_32BITS=1

set(ANDROID_ABI armv7a)
set(ANDROID_ABI_SHORT arm)
set(ANDROID_API 19)


# set(CMAKE_SYSTEM_NAME Android)
# set(CMAKE_SYSTEM_VERSION 1)

# if(USE_32BITS)
#     message(STATUS "using 32bits")
#     set(CMAKE_SYSTEM_PROCESSOR x86)
# else()
#     set(CMAKE_SYSTEM_PROCESSOR x86_64)
# endif(USE_32BITS)

set(TOOLCHAIN_DIR      $ENV{NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin)


set(CMAKE_C_COMPILER   ${TOOLCHAIN_DIR}/${ANDROID_ABI}-linux-androideabi${ANDROID_API}-clang)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/${ANDROID_ABI}-linux-androideabi${ANDROID_API}-clang++)
set(CMAKE_AR           ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-ar)
set(CMAKE_RANLIB       ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-ranlib)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-as)
set(CMAKE_LINKER       ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-ld)
set(CMAKE_NM           ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-nm)
set(CMAKE_OBJCOPY      ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-objcopy)
set(CMAKE_OBJDUMP      ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-objdump)
set(CMAKE_STRIP        ${TOOLCHAIN_DIR}/${ANDROID_ABI_SHORT}-linux-androideabi-strip)
