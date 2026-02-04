cmake_minimum_required(VERSION 3.15)
project(rsa LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Set vcpkg toolchain
set(CMAKE_TOOLCHAIN_FILE "C:/Users/arnav/vcpkg/scripts/buildsystems/vcpkg.cmake")

# Force static runtime for MSVC
if(MSVC)
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    foreach(flag_var
        CMAKE_C_FLAGS CMAKE_C_FLAGS_DEBUG CMAKE_C_FLAGS_RELEASE
        CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE)
        string(REPLACE "/MD" "/MT" ${flag_var} "${${flag_var}}")
    endforeach()
endif()

# Create executable
add_executable(encrypt encrypt.cpp rsa.cpp tetris.cpp)

# Include directories for static packages
target_include_directories(encrypt PRIVATE
    C:/Users/arnav/vcpkg/installed/x64-windows-static/include
)

# Compile definitions for static linking
target_compile_definitions(encrypt PRIVATE
    SFML_STATIC
    BOTAN_DLL=
)

# Link libraries manually

target_link_libraries(encrypt PRIVATE
    # Botan
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/botan-3.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/botan-3.lib>
    
    # SFML
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/sfml-graphics-s-d.lib>
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/sfml-window-s-d.lib>
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/sfml-system-s-d.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/sfml-graphics-s.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/sfml-window-s.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/sfml-system-s.lib>

    # Freetype
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/freetype-d.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/freetype.lib>

    # PNG (needed by freetype)
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/libpng16d.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/libpng16.lib>

    # Zlib (needed by PNG)
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/zlibd.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/zlib.lib>

    # Brotli (needed by freetype for WOFF2)
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/brotlidec.lib>
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/brotlicommon.lib>
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/brotlienc.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/brotlidec.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/brotlicommon.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/brotlienc.lib>


    # BZip2 (needed by freetype)
    $<$<CONFIG:Debug>:C:/Users/arnav/vcpkg/installed/x64-windows-static/debug/lib/bz2d.lib>
    $<$<CONFIG:Release>:C:/Users/arnav/vcpkg/installed/x64-windows-static/lib/bz2.lib>

    # Windows system libs
    opengl32.lib
    winmm.lib
    gdi32.lib
    user32.lib
    advapi32.lib
    shell32.lib
)
