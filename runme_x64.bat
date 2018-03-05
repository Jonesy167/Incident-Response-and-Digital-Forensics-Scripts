call %~d0\fciv\verify_hashes.bat
TIMEOUT 2
call %~d0\Scripts\memory_queries_x64.bat
TIMEOUT 15
REM runas /user:%USERNAME% /savecred %~d0\Scripts\memory_queries_user.bat
TIMEOUT 2
ECHO COLLECTED DATA, NOW CHECKING HASHES
start  %~d0\tools\cmd_x86.exe\  %~d0\fciv\verify_hashes.bat
TIMEOUT 2
ECHO COMPLETE
TIMEOUT 10
TASKKILL /F /IM cmd*

