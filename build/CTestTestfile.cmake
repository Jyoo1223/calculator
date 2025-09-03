# CMake generated Testfile for 
# Source directory: C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator
# Build directory: C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(calculator_tests "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/build/Debug/test_calculator.exe")
  set_tests_properties(calculator_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;28;add_test;C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(calculator_tests "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/build/Release/test_calculator.exe")
  set_tests_properties(calculator_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;28;add_test;C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(calculator_tests "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/build/MinSizeRel/test_calculator.exe")
  set_tests_properties(calculator_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;28;add_test;C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(calculator_tests "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/build/RelWithDebInfo/test_calculator.exe")
  set_tests_properties(calculator_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;28;add_test;C:/Users/7000041455/OneDrive - Sony/Documents/Documents/Calculator/CMakeLists.txt;0;")
else()
  add_test(calculator_tests NOT_AVAILABLE)
endif()
