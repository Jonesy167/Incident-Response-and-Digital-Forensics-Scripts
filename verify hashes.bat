start %~d0\cmd_x64.exe /k "fciv.exe -v -xml %~d0\hashes.xml Tools -r >> verify.txt"  && TIMEOUT 2 && /k exit
start %~d0\cmd_x64.exe /k "type verify.txt" 
