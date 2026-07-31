@echo off
setlocal

echo ============================================
echo   Installing g++ (C++ compiler) for Windows
echo ============================================
echo.

:: --- Check if g++ is already installed ---
where g++ >nul 2>&1
if %errorlevel%==0 (
    echo g++ is already installed:
    g++ --version
    echo.
    pause
    exit /b 0
)

:: --- Make sure winget exists ---
where winget >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: winget not found. You need Windows 10/11 with App Installer.
    echo Get it from the Microsoft Store ^("App Installer"^) and re-run this file.
    pause
    exit /b 1
)

:: --- Install MSYS2 ---
echo Installing MSYS2 ^(this provides the g++ toolchain^)...
winget install --id MSYS2.MSYS2 -e --accept-source-agreements --accept-package-agreements
if %errorlevel% neq 0 (
    echo ERROR: MSYS2 installation failed.
    pause
    exit /b 1
)

:: --- Locate MSYS2 ---
set "MSYS2_DIR=C:\msys64"
if not exist "%MSYS2_DIR%\usr\bin\bash.exe" (
    echo ERROR: Could not find MSYS2 at %MSYS2_DIR%.
    pause
    exit /b 1
)

:: --- Install the GCC/g++ toolchain via pacman ---
echo.
echo Installing the g++ toolchain via pacman...
"%MSYS2_DIR%\usr\bin\bash.exe" -lc "pacman -Sy --noconfirm --needed mingw-w64-ucrt-x86_64-gcc"
if %errorlevel% neq 0 (
    echo ERROR: Toolchain installation failed.
    pause
    exit /b 1
)

:: --- Add g++ to the user PATH ---
set "GPP_BIN=%MSYS2_DIR%\ucrt64\bin"
echo.
echo Adding %GPP_BIN% to your PATH...
setx PATH "%PATH%;%GPP_BIN%" >nul

echo.
echo ============================================
echo   Done! Close and reopen your terminal,
echo   then run:   g++ --version
echo ============================================
echo.
pause
endlocal
