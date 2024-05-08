
# This file was generated by the build system used internally in Yandex and called "ya"
# (https://github.com/yandex/yatool).
#
# Configuration files of ya build system are usually named ya.make. If ya.make file is present
# at the root of the repository, then this repository supports ya build.
#
# If the repository supports both CMake and ya build configurations, please modify both of them.
#
# If only CMake build configuration is supported then modify only CMake files and note that only
# simple modifications are allowed like adding source-files to targets or adding simple properties
# like target_include_directories. These modifications will be ported to original ya.make files
# by maintainers. Any complex modifications which can't be easily ported back to the ya build
# system may be rejected.


if (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64" AND NOT HAVE_CUDA)
  set(YASM_FLAGS -f elf64 -D UNIX -D _x86_64_ -D_YASM_ -g dwarf2)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64" AND HAVE_CUDA)
  set(YASM_FLAGS -f elf64 -D UNIX -D _x86_64_ -D_YASM_ -g dwarf2)
  set(CMAKE_CUDA_STANDARD 17)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64" AND NOT HAVE_CUDA)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64" AND HAVE_CUDA)
  set(CMAKE_CUDA_STANDARD 17)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "ppc64le" AND NOT HAVE_CUDA)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "ppc64le" AND HAVE_CUDA)
  set(CMAKE_CUDA_STANDARD 17)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Darwin" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64")
  set(YASM_FLAGS -f macho64 -D DARWIN -D UNIX -D _x86_64_ -D_YASM_)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Darwin" AND CMAKE_SYSTEM_PROCESSOR STREQUAL "arm64")
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (WIN32 AND CMAKE_SYSTEM_PROCESSOR STREQUAL "AMD64" AND NOT HAVE_CUDA)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (WIN32 AND CMAKE_SYSTEM_PROCESSOR STREQUAL "AMD64" AND HAVE_CUDA)
  set(CMAKE_CUDA_STANDARD 17)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (ANDROID AND CMAKE_ANDROID_ARCH STREQUAL "arm")
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (ANDROID AND CMAKE_ANDROID_ARCH STREQUAL "arm64")
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (ANDROID AND CMAKE_ANDROID_ARCH STREQUAL "x86")
  set(YASM_FLAGS -f elf32 -D UNIX -D _i686_ -D_YASM_ -g dwarf2)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
elseif (ANDROID AND CMAKE_ANDROID_ARCH STREQUAL "x86_64")
  set(YASM_FLAGS -f elf64 -D UNIX -D _x86_64_ -D_YASM_ -g dwarf2)
  set(FBS_CPP_FLAGS --no-warnings --cpp --keep-prefix --gen-mutable --schema -b --yandex-maps-iter --gen-object-api --filename-suffix .fbs)
  set(RAGEL_FLAGS -L -I ${PROJECT_SOURCE_DIR}/)
endif()

