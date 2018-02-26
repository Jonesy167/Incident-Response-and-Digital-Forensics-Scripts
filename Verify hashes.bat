start %~d0\cmd_x86.exe /k "%~d0\fciv.exe -v -xml %~d0\hashes.xml Tools -r >> %~d0\verify.txt"  && TIMEOUT 2 && /k exit
TIMEOUT 1
start %~d0\cmd_x86.exe /k "type %~d0\verify.txt" 
echo test

