del /f /s /q build 1>nul
rmdir /s /q build

sphinx-build -b html source build
make html
pause