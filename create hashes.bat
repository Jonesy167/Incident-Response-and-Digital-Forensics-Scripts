del %~d0\verify.txt
del  %~d0\hashes.xml
start %~d0\cmd_x64.exe /k "fciv.exe Tools -r -xml %~d0\hashes.xml" ::change file paths as appropriate
/k  exit
%~d0\cmd_x64.exe /k exit
