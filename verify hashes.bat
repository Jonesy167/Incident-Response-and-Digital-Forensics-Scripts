start %~d0\cmd_x64.exe /k "fciv.exe -v -xml %~d0\hashes.xml Tools -r >> verify.txt"  && %~d0\cmd_x64.exe /k "type %~d0\verify.txt" 
