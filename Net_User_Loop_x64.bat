@echo off
rem Process output of command 'net user' line by line with skipping
rem the first 4 lines and stopping processing when line with success
rem message is reached which of course depends on language of Windows.
for /F "usebackq skip=4 delims=" %%L in (`%SystemRoot%\System32\net.exe user`) do (
    if "%%L"=="The command was successfully executed." goto :EOF
    call :ProcessAccounts "%%L"
)
goto :EOF

rem Subrountine to process a line with user account names.
:ProcessAccounts
rem Get the line without the double quotes.
set "Line=%~1"

:NextUser
rem Get first 20 characters from line and next remove those 20 characters.
set "Name=%Line:~0,20%"
set "Line=%Line:~20%"

rem Remove all spaces at end of current user account name.
:TrimRight
if "%Name:~-1%"==" " (
    set "Name=%Name:~0,-1%"
    goto TrimRight
)

rem print output of net user %user name%
start %~d0\tools\cmd_x64.exe  /k "net user %Name% >> %~d0\Memory\net_user_loop.txt"
TIMEOUT 2
)

rem Remove leading spaces from remaining line.
:TrimLeft
if "%Line:~0,1%"==" " (
    set "Line=%Line:~1%"
    goto TrimLeft
)