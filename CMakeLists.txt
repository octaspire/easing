cmake_minimum_required(VERSION 2.8.12)
project(octaspire-easing C)

set(OCTASPIRE_EASING_CONFIG_VERSION_MAJOR 0)
set(OCTASPIRE_EASING_CONFIG_VERSION_MINOR 5)
set(OCTASPIRE_EASING_CONFIG_VERSION_PATCH 0)

message("== Building ${PROJECT_NAME} ${OCTASPIRE_EASING_CONFIG_VERSION_MAJOR}.${OCTASPIRE_EASING_CONFIG_VERSION_MINOR}.${OCTASPIRE_EASING_CONFIG_VERSION_PATCH}")

set(OCTASPIRE_EASING_CONFIG_TEST_RES_PATH "${CMAKE_CURRENT_SOURCE_DIR}/test/resource/")

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/include/octaspire/easing/octaspire_easing_config.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/include/octaspire/easing/octaspire_easing_config.h")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING
        "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel. " FORCE)
endif(NOT CMAKE_BUILD_TYPE)

message("== Build type of ${PROJECT_NAME} is ${CMAKE_BUILD_TYPE}")

file(GLOB SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c")
file(GLOB HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/include/octaspire/easing/*.h")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include/")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}")
include_directories("${CMAKE_CURRENT_BINARY_DIR}/include")

option(OCTASPIRE_EASING_COVERAGE  "OCTASPIRE_EASING_COVERAGE"  OFF)
option(OCTASPIRE_EASING_UNIT_TEST "OCTASPIRE_EASING_UNIT_TEST" ON)

if(OCTASPIRE_EASING_COVERAGE)
    message("== Code coverage enabled for ${PROJECT_NAME}")
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} --coverage")
endif(OCTASPIRE_EASING_COVERAGE)

if(OCTASPIRE_EASING_UNIT_TEST)
    message("== Unit testing enabled for ${PROJECT_NAME}")
else()
    message("== Unit testing disabled for ${PROJECT_NAME}")
endif(OCTASPIRE_EASING_UNIT_TEST)

add_library(octaspire-easing STATIC ${SOURCES})
set_property(TARGET octaspire-easing PROPERTY C_STANDARD 99)
set_property(TARGET octaspire-easing PROPERTY C_EXTENSIONS OFF)

if(CMAKE_C_COMPILER_ID MATCHES "Clang" OR CMAKE_C_COMPILER_ID MATCHES "GNU")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -Wall -Wextra -pedantic")
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -std=c99 -fno-omit-frame-pointer -Wall -Wextra -pedantic -Werror")
endif(CMAKE_C_COMPILER_ID MATCHES "Clang" OR CMAKE_C_COMPILER_ID MATCHES "GNU")

if(CMAKE_C_COMPILER_ID MATCHES "Clang")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fcolor-diagnostics")
    #set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -fcolor-diagnostics -fsanitize=undefined")
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -fcolor-diagnostics")
endif(CMAKE_C_COMPILER_ID MATCHES "Clang")

target_link_libraries(octaspire-easing m)
install(TARGETS octaspire-easing DESTINATION lib)

add_custom_target(
    cppcheck-easing
    COMMAND cppcheck --std=c99 -I "${CMAKE_CURRENT_SOURCE_DIR}/include" "${CMAKE_CURRENT_SOURCE_DIR}/external/octaspire_core/include" "${CMAKE_CURRENT_SOURCE_DIR}/external/octaspire_core/include"
            --enable=warning,performance,portability
            --verbose --quiet ${SOURCES} ${HEADERS})

add_custom_target(
    vera-easing
    COMMAND vera++ --error ${SOURCES} ${HEADERS})

add_custom_target(
    new-release-easing
    COMMAND "${CMAKE_SOURCE_DIR}/etc/new-release.sh" "${CMAKE_SOURCE_DIR}")

if(NOT TARGET octaspire-easing-test-runner AND OCTASPIRE_EASING_UNIT_TEST)
    message("== Building of unit tests enabled for ${PROJECT_NAME}")
    enable_testing()
    include(CTest)
    add_subdirectory(test)
endif(NOT TARGET octaspire-easing-test-runner AND OCTASPIRE_EASING_UNIT_TEST)

