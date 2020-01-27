cmake_minimum_required(VERSION 3.6)
project(aapt_cmake_buildscript)

include_directories($ENV{NDK/sysroot/usr/include/arm-linux-androideabi)
#纯头文件引用
set(native_header
        ${CMAKE_SOURCE_DIR}/frameworks/native/include
        )
set(safe_iop_header
        ${CMAKE_SOURCE_DIR}/external/safe-iop/include
        )
set(libbacktrace_header
        ${CMAKE_SOURCE_DIR}/system/core/libbacktrace
        ${CMAKE_SOURCE_DIR}/system/core/libbacktrace/include
        )
set(libsystem_header
        ${CMAKE_SOURCE_DIR}/system/core/libsystem/include
        )

#源码和头文件引用
set(androidfw_header
        ${CMAKE_SOURCE_DIR}/frameworks/base/libs/androidfw/include
        )
set(expat_header
        ${CMAKE_SOURCE_DIR}/external/expat
        ${CMAKE_SOURCE_DIR}/external/expat/lib
        )
set(libpng_header
        ${CMAKE_SOURCE_DIR}/external/libpng
        )
set(protobuf_header
        ${CMAKE_SOURCE_DIR}/external/protobuf/android
        ${CMAKE_SOURCE_DIR}/external/protobuf/src
        )
set(zlib_header
        ${CMAKE_SOURCE_DIR}/external/zlib
        ${CMAKE_SOURCE_DIR}/external/zlib/src
        )

set(libcxx_header
        ${CMAKE_SOURCE_DIR}/external/libcxx/include
        )

set(libcxxabi_header
        ${CMAKE_SOURCE_DIR}/external/libcxxabi/include
        )

set(compiler_rt_header
        ${CMAKE_SOURCE_DIR}/external/compiler-rt/include
        )

set(base_header
        ${CMAKE_SOURCE_DIR}/system/core/base/include
        )
set(libcutils_header
        ${CMAKE_SOURCE_DIR}/system/core/libcutils
        ${CMAKE_SOURCE_DIR}/system/core/libcutils/include
        )
set(liblog_header
        ${CMAKE_SOURCE_DIR}/system/core/liblog
        ${CMAKE_SOURCE_DIR}/system/core/liblog/include
        )
set(libutils_header
        ${CMAKE_SOURCE_DIR}/system/core/libutils
        ${CMAKE_SOURCE_DIR}/system/core/libutils/include
        )
set(libziparchive_header
        ${CMAKE_SOURCE_DIR}/system/core/libziparchive
        ${CMAKE_SOURCE_DIR}/system/core/libziparchive/include
        )
set(libnativehelper_header
        ${CMAKE_SOURCE_DIR}/libnativehelper/include_jni
        )
#aapt头文件
set(aapt_header
        ${CMAKE_SOURCE_DIR}/frameworks/base/tools/aapt
        )
#aapt2头文件
set(aapt2_header
        ${CMAKE_SOURCE_DIR}/frameworks/base/tools/aapt2
        )

set(global_libcxx_cxxflags "-nostdinc++ -DLIBCXX_BUILDING_LIBCXXABI -D_LIBCPP_BUILDING_LIBRARY")


MESSAGE(STATUS "当前CMAKE_SOURCE_DIR目录: ${CMAKE_SOURCE_DIR}")
#添加子目录构建脚本
add_subdirectory(${CMAKE_SOURCE_DIR}/libcxx)
add_subdirectory(${CMAKE_SOURCE_DIR}/libcxxabi)
add_subdirectory(${CMAKE_SOURCE_DIR}/compiler-rt)
add_subdirectory(${CMAKE_SOURCE_DIR}/zlib)
add_subdirectory(${CMAKE_SOURCE_DIR}/libpng)
add_subdirectory(${CMAKE_SOURCE_DIR}/androidfw)
add_subdirectory(${CMAKE_SOURCE_DIR}/base)
add_subdirectory(${CMAKE_SOURCE_DIR}/liblog)
add_subdirectory(${CMAKE_SOURCE_DIR}/libziparchive)
add_subdirectory(${CMAKE_SOURCE_DIR}/expat)
add_subdirectory(${CMAKE_SOURCE_DIR}/libcutils)
add_subdirectory(${CMAKE_SOURCE_DIR}/libutils)
add_subdirectory(${CMAKE_SOURCE_DIR}/protobuf/libprotobuf-cpp-lite)
add_subdirectory(${CMAKE_SOURCE_DIR}/protobuf/aprotoc)
add_subdirectory(${CMAKE_SOURCE_DIR}/aapt_static)
add_subdirectory(${CMAKE_SOURCE_DIR}/aapt)
add_subdirectory(${CMAKE_SOURCE_DIR}/aapt2_static)
add_subdirectory(${CMAKE_SOURCE_DIR}/aapt2)
add_subdirectory(${CMAKE_SOURCE_DIR}/aapt2_jni)

