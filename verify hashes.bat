type nul > verify.txt
start %~d0\cmd_x64.exe /k "fciv.exe -v -xml %~d0\hashes.xml Tools -r >> verify.txt
timeout /t 2 /nobreak > NUL
type  verify.txt
pause > NUL
exit /B
