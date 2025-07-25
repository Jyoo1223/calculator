cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_CXX_STANDARD 17)

# Build the calculator library
add_library(calculator calculator.cpp)

# === Google Test Setup ===
enable_testing()
include(CTest)

# If GoogleTest is installed via system package manager or vcpkg
find_package(GTest QUIET)

if (GTest_FOUND)
    message(STATUS "Using system-installed GoogleTest")
    include_directories(${GTEST_INCLUDE_DIRS})
    add_executable(test_calculator test_calculator.cpp)
    target_link_libraries(test_calculator
        calculator
        GTest::gtest
        GTest::gtest_main
    )

elseif(WIN32)
    message(STATUS "GoogleTest not found via find_package. Using manual Windows paths.")

    # ✅ Replace these with your actual local Windows GTest paths
    set(GTEST_INCLUDE_DIR "C:/Users/7000041455/googletest-1.17.0/googletest/include")
    set(GTEST_LIB_DIR "C:/Users/7000041455/googletest-1.17.0/build/lib/Release")

    include_directories(${GTEST_INCLUDE_DIR})

    add_executable(test_calculator test_calculator.cpp)
    target_link_libraries(test_calculator
        calculator
        "${GTEST_LIB_DIR}/gtest.lib"
        "${GTEST_LIB_DIR}/gtest_main.lib"
    )
else()
    message(FATAL_ERROR "GoogleTest not found. On Linux, install it with: sudo apt install libgtest-dev")
endif()

# Register the test
add_test(NAME calculator_tests COMMAND test_calculator)
