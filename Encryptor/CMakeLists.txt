cmake_minimum_required(VERSION 3.15)
project(rsa LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Set vcpkg toolchain
set(CMAKE_TOOLCHAIN_FILE "C:/Users/arnav/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
set(VCPKG_TARGET_TRIPLET "x64-windows-static" CACHE STRING "")

# Force static runtime for MSVC
if(MSVC)
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()

# Create executable
add_executable(encrypt 
    encrypt.cpp 
    rsa.cpp 
    tetris.cpp 
    datascrape.cpp
)

# Find SFML - Use SFML 3.x component names
find_package(SFML 3 COMPONENTS Graphics Window System REQUIRED)

# Manually set Botan paths
set(BOTAN_INCLUDE_DIR "C:/Users/arnav/vcpkg/installed/x64-windows-static/include")
set(BOTAN_LIBRARY_DEBUG "C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/botan-3.lib")
set(BOTAN_LIBRARY_RELEASE "C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/botan-3.lib")

# Include Botan headers
target_include_directories(encrypt PRIVATE ${BOTAN_INCLUDE_DIR})

# Link libraries
target_link_libraries(encrypt PRIVATE
    SFML::Graphics
    SFML::Window
    SFML::System
    $<$<CONFIG:Debug>:${BOTAN_LIBRARY_DEBUG}>
    $<$<CONFIG:Release>:${BOTAN_LIBRARY_RELEASE}>
    # Windows system libraries needed by Botan
    bcrypt.lib
    ws2_32.lib
    crypt32.lib
)

# Compile definitions for static SFML
target_compile_definitions(encrypt PRIVATE
    SFML_STATIC
)