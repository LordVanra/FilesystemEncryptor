@echo off
rmdir /s /q build
cmake -B build -G "Visual Studio 17 2022" -A x64 -DCMAKE_TOOLCHAIN_FILE=C:/Users/arnav/vcpkg/scripts/buildsystems/vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows-static
IF ERRORLEVEL 1 exit /b 1
cmake --build build --config Release
IF ERRORLEVEL 1 exit /b 1
build\Release\encrypt.exe
pause
