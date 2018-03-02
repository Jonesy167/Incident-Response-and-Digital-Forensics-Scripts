rmdir /s /q  %~d0\Memory
TIMEOUT 2
mkdir  %~d0\Memory 2> NUL
TIMEOUT 1
start  cmd.exe /k "tasklist /M > %~d0\Memory\tasklist_M.txt && exit"
TIMEOUT 1 
start  cmd.exe /k "tasklist /V > %~d0\Memory\tasklist_V.txt && exit"
TIMEOUT 1 
start  cmd.exe /k "tasklist /SVC > %~d0\Memory\tasklist_SVC.txt && exit"
TIMEOUT 1  
start cmd.exe /k "date > %~d0\Memory\date.txt && exit"
start  cmd.exe /k "time > %~d0\Memory\time.txt && exit" 
start  cmd.exe /k " %~d0\Tools\Sysinternals\SysinternalsSuite\handle.exe > %~d0\Memory\open_files.txt && exit"
start  cmd.exe /k " %~d0\Tools\Sysinternals\SysinternalsSuite\handle.exe -a > %~d0\Memory\open_files_a.txt && exit"
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\PsLoggedon.exe > \Memory\PsLoggedon.txt
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\psloglist.exe > \Memory\psloglist.txt
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\Autorunsc.exe > \Memory\Autorunsc.txt
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\psinfo.exe > \Memory\psinfo.txt
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\coreinfo.exe > \Memory\coreinfo.txt
start  cmd.exe /k  "%~d0\Tools\SysinternalsSuite\psfile.exe > \Memory\psfile.txt
start  cmd.exe /k "WMIC BIOS Get Manufacturer > %~d0\Memory\BIOSInfo.txt && exit" 
start  cmd.exe /k "systeminfo > %~d0\Memory\systeminfo.txt && exit" 
start  cmd.exe /k "net user > %~d0\Memory\net_user.txt && exit" 
start  cmd.exe /k "netstat -ano > %~d0\Memory\netstat.txt && exit" 
start  cmd.exe /k "query user > %~d0\Memory\logged_in_user.txt && exit" 
start  cmd.exe /k "set > %~d0\Memory\set.txt && exit" 
start  cmd.exe /k "ipconfig /displaydns > %~d0\Memory\DNS_cache.txt && exit"
start  cmd.exe /k "ipconfig /allcompartments /all > %~d0\Memory\IPConfig_all_compartements.txt && exit"
start  cmd.exe /k "net start > %~d0\Memory\Running_Services.txt && exit"
start  cmd.exe /k "arp -a >  %~d0\Memory\arp_cache.txt && exit"
start  cmd.exe /k "query user >  %~d0\Memory\logged_in_user.txt && exit"
start  cmd.exe /k "netstat -s >  %~d0\Memory\nestat_stats.txt && exit"
start  cmd.exe /k "driverquery > %~d0\Memory\driverquery.txt
start  cmd.exe /k "wmic startup get caption,command > %~d0\Memory\start_up_programs.txt
start  cmd.exe /k "net share > %~d0\Memory\network_shares.txt
start  cmd.exe /k "wmic os get osarchitecture > %~d0\Memory\arch.txt
start  cmd.exe /k "schtasks /query /v /fo LIST > %~d0\Memory\scheduled_tasks.txt
call %~d0\Scripts\Net_User_Loop.bat > %~d0\Memory\Net_User_Loop.txt
powershell get-psdrive -psprovider filesystem > %~d0\Memory\drives.txt 