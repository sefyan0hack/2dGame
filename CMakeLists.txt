cmake_minimum_required(VERSION 3.30)

project(2dGame LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 23)

# if you have problem with not fouding compiler put path/to/compiler.exe
# Specify the compiler
# SET(CMAKE_SYSTEM_NAME Windows)
# set(CMAKE_C_COMPILER C:/mingw-w64/mingw64/bin/gcc.exe)
# set(CMAKE_CXX_COMPILER C:/mingw-w64/mingw64/bin/g++.exe)


set(CMAKE_MODULE_PATH "${CMAKE_BINARY_DIR}" "${CMAKE_MODULE_PATH}")
set(CMAKE_PREFIX_PATH "${CMAKE_BINARY_DIR}" "${CMAKE_PREFIX_PATH}")
set (SOURCE
    src/main.cpp
    src/Game.cpp
    )

set(CoreSrc
    Core/Keyboard.cpp
    Core/Mouse.cpp
	Core/Window.cpp
	Core/OpenGL.cpp
    Core/APP.cpp
    Core/Texture.cpp
    Core/Shader.cpp
	)

include(ProcessorCount)
ProcessorCount(NUMBER_OF_PROCESSORS)
if(NOT NUMBER_OF_PROCESSORS EQUAL 0)
	set(MAKEFLAGS "-j${NUMBER_OF_PROCESSORS}")
	set(ENV{MAKEFLAGS} "${MAKEFLAGS}")
	MESSAGE(STATUS "Set MAKEFLAGS for MinGW Makefiles to ${MAKEFLAGS}")
endif()


MARK_AS_ADVANCED(MULTITHREADED_BUILD)
SET(MULTITHREADED_BUILD ON CACHE BOOL "Parallel build with as many threads as possible!")
if(MULTITHREADED_BUILD)
    if(${CMAKE_GENERATOR} MATCHES "MinGW Makefiles")
        # Use MAKEFLAGS to specify the number of jobs for parallel build
        set(MAKEFLAGS "-j${NUMBER_OF_PROCESSORS}")
        set(ENV{MAKEFLAGS} "${MAKEFLAGS}")
        MESSAGE(STATUS "Set MAKEFLAGS for MinGW Makefiles to ${MAKEFLAGS}")
    elseif(MSVC)
        SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP")
        MESSAGE(STATUS "Added parallel build arguments to CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS}")
    endif()
endif()

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")

# Find OpenGL package
find_package(OpenGL REQUIRED)


# Add 3party include directory
include_directories("${PROJECT_SOURCE_DIR}/3party")
# Add Core include directory
include_directories("${PROJECT_SOURCE_DIR}/Core")

# Add glad source file
add_library(glad STATIC 3party/glad/glad.c)
set_target_properties(glad PROPERTIES LINKER_LANGUAGE C)

# Add stb image source file
add_library(stb_image STATIC 3party/stb/stb_image.c)
set_target_properties(stb_image PROPERTIES LINKER_LANGUAGE C)

# Add Core source file
add_library(Core STATIC ${CoreSrc})
set_target_properties(Core PROPERTIES LINKER_LANGUAGE CXX)

# remove some warning
set(REMOVE_WAR "-Wno-cast-function-type")
if (MSVC)
add_compile_options(/W4)
else()
    add_compile_options(-Wall -Wextra -Wpedantic)
    set(CMAKE_CXX_FLAGS_RELEASE "${REMOVE_WAR} -Ofast -march=native") ## Optimize
    set(CMAKE_CXX_FLAGS_DEBUG   "${REMOVE_WAR} -O0 -g3 -ggdb") ## Debug
endif()
add_executable(2dGame  ${SOURCE})
target_link_libraries(Core glad stb_image ${OPENGL_LIBRARIES})
target_link_libraries(2dGame Core)
