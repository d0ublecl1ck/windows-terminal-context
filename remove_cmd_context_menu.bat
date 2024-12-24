@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Administrator permissions required
    echo Please right click and select "Run as administrator"
    pause
    exit /B
)

echo Removing context menu...

reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdPrompt" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\cmdPrompt" /f

echo Done!
pause 