cmake_minimum_required(VERSION 3.10)
project(MessageDecorator VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(message_decorator message.cpp)

enable_testing()
add_test(NAME SimpleRun COMMAND message_decorator)

install(TARGETS message_decorator DESTINATION /usr/local/bin)

set(CPACK_GENERATOR "DEB")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Nicckki <nicckki@example.com>")
set(CPACK_PACKAGE_DESCRIPTION "Decorator Pattern Example")
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
include(CPack)
