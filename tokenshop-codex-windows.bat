@echo off
setlocal
chcp 65001 >nul
set "MODULE_SETUP_FILE=%TEMP%\tokenshop-codex-windows-%RANDOM%.ps1"
echo Downloading Token Shop Codex setup...
curl.exe --fail --location --silent --show-error "https://token-shop.online/downloads/tokenshop-codex-windows.ps1?v=20261022-utf8-bom" --output "%MODULE_SETUP_FILE%"
if errorlevel 1 (
  echo Download failed. Check your internet connection and try again.
  pause
  exit /b 1
)
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%MODULE_SETUP_FILE%"
set "MODULE_SETUP_EXIT=%errorlevel%"
del "%MODULE_SETUP_FILE%" >nul 2>&1
echo.
pause
exit /b %MODULE_SETUP_EXIT%
