@echo off
set BUILD_EXE=build\Release\encrypt.exe
set DEPLOY_EXE=deploy\encrypt.exe

if exist "%DEPLOY_EXE%" (
    for %%B in ("%BUILD_EXE%") do set BUILD_TIME=%%~tB
    for %%D in ("%DEPLOY_EXE%") do set DEPLOY_TIME=%%~tD
    if "%DEPLOY_TIME%" geq "%BUILD_TIME%" (
        "%DEPLOY_EXE%"
        goto :eof
    )
)

call deploy.bat
"%DEPLOY_EXE%"
