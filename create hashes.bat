del %~d0\verify.txt
TINMEOUT 1
del  %~d0\hashes.xml
TINMEOUT 1
del %~d0\fciv.err
TINMEOUT 1
start %~d0\cmd_x86.exe /k "%~d0\fciv.exe %~d0\Tools -r -xml %~d0\hashes.xml" 
TINMEOUT 3
/k  exit
