@echo off
rmdir /s /q build
cmake -B build -G "Visual Studio 17 2022" -A x64 ^
    -DCMAKE_TOOLCHAIN_FILE=C:/Users/arnav/vcpkg/scripts/buildsystems/vcpkg.cmake ^
    -DVCPKG_TARGET_TRIPLET=x64-windows-static ^
    -DSFML_STATIC_LIBRARIES=TRUE ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>"
cmake --build build --config Release
if not exist deploy mkdir deploy
copy build\Release\encrypt.exe deploy\encrypt.exe
