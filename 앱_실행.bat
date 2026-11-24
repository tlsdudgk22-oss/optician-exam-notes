@echo off
pushd "%~dp0"
set PORT=8765
echo ======================================================
echo   Optician Exam Notes - Local PWA Server
echo   URL: http://localhost:%PORT%/index.html
echo   Keep this window open while installing/using.
echo   Press Ctrl+C or close this window to stop.
echo ======================================================
python --version >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%/index.html"
  python -m http.server %PORT% --bind 127.0.0.1
  goto :end
)
py --version >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%/index.html"
  py -m http.server %PORT% --bind 127.0.0.1
  goto :end
)
echo Python not found. Opening index.html directly...
start "" "%~dp0index.html"
pause
:end
popd
