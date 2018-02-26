rmdir /s /q  %~d0\Memory
TIMEOUT 2
mkdir  %~d0\Memory 2> NUL
TIMEOUT 1
start cmd.exe /k "tasklist > %~d0\Memory\tasklist.txt" 
TIMEOUT 2
start cmd.exe /k "date > %~d0\Memory\date.txt" 
start  cmd.exe /k "time > %~d0\Memory\time.txt" 
start  cmd.exe /k "WMIC BIOS Get Manufacturer > %~d0\Memory\BIOSInfo.txt" 
start  cmd.exe /k "systeminfo > %~d0\Memory\systeminfo.txt" 
start  cmd.exe /k "net user > %~d0\Memory\net_user.txt" 
start  cmd.exe /k "netstat -a > %~d0\Memory\netstat.txt" 
start  cmd.exe /k "query user > %~d0\Memory\logged_in_user.txt" 
start  cmd.exe /k "set > %~d0\Memory\set.txt" 
start  cmd.exe /k "ipconfig /displaydns > %~d0\Memory\DNS_cache.txt"
start  cmd.exe /k "ipconfig /allcompartments /all > %~d0\Memory\IPConfig_all_compartements.txt"
start  cmd.exe /k "net start > %~d0\Memory\Running_Services.txt"
TIMEOUT 10
call "%~d0\Scripts\Net_User_Loop.bat" > %~d0\Memory\Net_User_Loop.txt && exit /B
TIMEOUT 2
powershell get-psdrive -psprovider filesystem > %~d0\Memory\drives.txt && TASKKILL /F /IM powershell_ise.exe
TASKKILL /F /IM cmd*
TASKKILL /F /IM powershell_ise.exe