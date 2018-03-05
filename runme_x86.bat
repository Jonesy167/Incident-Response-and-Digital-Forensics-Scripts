call %~d0\fciv\verify_hashes.bat
TIMEOUT 2
call %~d0\Scripts\memory_queries_x86.bat
ECHO GIVING PROCESSES CHANCE TO FINISH (1 MINUTE)
TIMEOUT 120
ECHO COLLECTED DATA, NOW CHECKING HASHES
start  %~d0\tools\cmd_x86.exe\  %~d0\fciv\verify_hashes.bat
TIMEOUT 45
ECHO COMPLETE
TIMEOUT 10
TASKKILL /F /IM cmd*

