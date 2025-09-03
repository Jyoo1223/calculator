cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_CXX_STANDARD 17)

# Build your calculator library
add_library(calculator calculator.cpp)

enable_testing()
include(CTest)

if (WIN32)
    message(STATUS "Using manual Windows GoogleTest paths")

    set(GTEST_INCLUDE_DIR "C:/Software/Gtest/googletest-1.17.0/googletest/include")
    set(GTEST_LIB_DIR "C:/Software/Gtest/googletest-1.17.0/build/lib/Release")

    include_directories(${GTEST_INCLUDE_DIR})

    add_executable(test_calculator test_calculator.cpp)

    target_link_libraries(test_calculator
        calculator
        "${GTEST_LIB_DIR}/gtest.lib"
        "${GTEST_LIB_DIR}/gtest_main.lib"
    )

    add_test(NAME calculator_tests COMMAND test_calculator)

else()
    find_package(GTest REQUIRED)
    include_directories(${GTEST_INCLUDE_DIRS})

    add_executable(test_calculator test_calculator.cpp)

    target_link_libraries(test_calculator
        calculator
        GTest::gtest
        GTest::gtest_main
        pthread
    )

    add_test(NAME calculator_tests COMMAND test_calculator)
endif()
