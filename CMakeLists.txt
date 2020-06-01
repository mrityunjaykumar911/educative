cmake_minimum_required(VERSION 3.4)


project(educative)

set(CMAKE_CXX_STANDARD 17)


if (MSVC)
    add_definitions(-D_CRT_SECURE_NO_WARNINGS -wd4018 -wd4244 -wd4800 -wd4805)
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror -Wno-unused-variable -Wno-sign-compare")
    link_libraries(pthread)
endif()

SET(CPP-C14C17 cpp-c14-c17)
SET(CPP-CONCURRENCY cpp-concurrency)
SET(CPP-EMBEDDING cpp-embedding)
SET(CPP-FUNDAMENTALS cpp-fundamentals)
SET(CPP-GENERIC cpp-generic)
SET(CPP-HEADER common_header)

# COMMON
file(GLOB ${CPP-HEADER}_HEADER
        "${CPP-HEADER}/*.h"
)

# C14C17
file(GLOB ${CPP-C14C17}_SRC
    ${${CPP-HEADER}_HEADER}
    "${CPP-C14C17}/*.h"
    "${CPP-C14C17}/*.cpp"
    "${CPP-C14C17}/*.cc"
)
add_executable(${CPP-C14C17} ${${CPP-C14C17}_SRC})

# CONCURRENCY
file(GLOB ${CPP-CONCURRENCY}_SRC
    ${${CPP-HEADER}_HEADER}
    "${CPP-CONCURRENCY}/*.h"
    "${CPP-CONCURRENCY}/*.cpp"
    "${CPP-CONCURRENCY}/*.cc"
)
add_executable(${CPP-CONCURRENCY} ${${CPP-CONCURRENCY}_SRC})

# EMBEDDING
file(GLOB ${CPP-EMBEDDING}_SRC
    ${${CPP-HEADER}_HEADER}
    "${CPP-EMBEDDING}/*.h"
    "${CPP-EMBEDDING}/*.cpp"
    "${CPP-EMBEDDING}/*.cc"
)
add_executable(${CPP-EMBEDDING} ${${CPP-EMBEDDING}_SRC})

# FUNDAMENTALS
file(GLOB ${CPP-FUNDAMENTALS}_SRC
    ${${CPP-HEADER}_HEADER}
    "${CPP-FUNDAMENTALS}/*.h"
    "${CPP-FUNDAMENTALS}/*.cpp"
    "${CPP-FUNDAMENTALS}/*.cc"
)
add_executable(${CPP-FUNDAMENTALS} ${${CPP-FUNDAMENTALS}_SRC})

# GENERIC
file(GLOB ${CPP-GENERIC}_SRC
    ${${CPP-HEADER}_HEADER}
    "${CPP-GENERIC}/*.h"
    "${CPP-GENERIC}/*.cpp"
    "${CPP-GENERIC}/*.cc"
)
add_executable(${CPP-GENERIC} ${${CPP-GENERIC}_SRC})