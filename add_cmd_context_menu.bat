@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Administrator permissions required
    echo Please right click and select "Run as administrator"
    pause
    exit /B
)

echo Adding context menu...

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdPrompt" /v "" /t REG_SZ /d "Open in Terminal" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdPrompt\command" /v "" /t REG_SZ /d "cmd.exe /k cd /d \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\shell\cmdPrompt" /v "" /t REG_SZ /d "Open in Terminal" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\cmdPrompt\command" /v "" /t REG_SZ /d "cmd.exe /k cd /d \"%%1\"" /f

echo Done!
pause 