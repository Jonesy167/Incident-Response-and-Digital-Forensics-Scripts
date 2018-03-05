rmdir /s /q  %~d0\Memory
TIMEOUT 1
mkdir  %~d0\Memory 2> NUL
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\tasklist.exe /M > %~d0\Memory\tasklist_M.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\tasklist.exe /V > %~d0\Memory\tasklist_V.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\SysinternalsSuite\handle.exe -a > %~d0\Memory\handle_open_files_a.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\tasklist.exe /SVC > %~d0\Memory\tasklist_SVC.txt & exit"
start %~d0\tools\cmd_x86.exe /k "%~d0\Tools\paste.exe > %~d0\Memory\clipboard.txt & exit"
TIMEOUT 1  
start %~d0\tools\cmd_x86.exe /k "date > %~d0\Memory\date.txt & exit"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k "time > %~d0\Memory\time.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k " %~d0\Tools\SysinternalsSuite\handle.exe > %~d0\Memory\open_files_handle.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\PsLoggedon.exe > %~d0\Memory\Logged_in_User_PsLoggedon.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\psloglist.exe > %~d0\Memory\Sys_Event_logs_psloglist.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\Autorunsc.exe > %~d0\Memory\auto-start_apps_Autorunsc.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\psinfo.exe > %~d0\Memory\sysinfo_psinfo.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\coreinfo.exe > %~d0\Memory\logical_to_physical_memory_coreinfo.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\psfile.exe > %~d0\Memory\files_opened_remotely_psfile.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\pslist.exe -m > %~d0\Memory\running_proccess_pslist_m.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\pslist.exe -d > %~d0\Memory\running_proccess_pslist_d.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\pslist.exe -t > %~d0\Memory\running_proccess_pslist_t.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\wbem\WMIC.exe BIOS Get Manufacturer > %~d0\Memory\BIOSInfo.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\pslist.exe > %~d0\Memory\running_proccess_pslist.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\listdlls.exe > %~d0\Memory\listdlls.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\SysinternalsSuite\psservice.exe > %~d0\Memory\Running_Services_.tpsservice.txt & exit"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\systeminfo.exe > %~d0\Memory\systeminfo_cmd.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe user > %~d0\Memory\accountsnet_user.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\netstat.exe -ano > %~d0\Memory\netstat.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\query.exe user > %~d0\Memory\logged_in_user_query_user_cmd.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "set > %~d0\Memory\environment_variables_set.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\ipconfig.exe /displaydns > %~d0\Memory\DNS_cache.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\ipconfig.exe /allcompartments /all > %~d0\Memory\IPConfig_all_compartements.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe start > %~d0\Memory\Running_Services_net_start.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\sc.exe queryex type= service state= all > %~d0\Memory\sc_queryex_type_all_services_sc.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\arp.exe -a >  %~d0\Memory\arp_cache.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\query.exe user >  %~d0\Memory\logged_in_user.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\netstat.exe -se >  %~d0\Memory\netstat_stats.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\driverquery.exe > %~d0\Memory\driverquery.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\route.exe PRINT > %~d0\Memory\routing_table.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\wbem\wmic.exe startup get caption,command > %~d0\Memory\start_up_programs_wmic.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe share > %~d0\Memory\network_shares_net.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\wbem\wmic.exe os get osarchitecture > %~d0\Memory\arch_wmic.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\schtasks.exe /query /v /fo LIST > %~d0\Memory\scheduled_tasks.txt & exit"
TIMEOUT 1 
start %~d0\Scripts\Net_User_Loop_x86.bat
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\wbem\wmic.exe process list full > %~d0\Memory\process_list_full_wmic.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe VIEW \\127.0.0.1 > %~d0\Memory\local_shares_net_view.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe SESSION /LIST > %~d0\Memory\user_sessions_net_session.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe ACCOUNTS > %~d0\Memory\account_policy_net_account.txt & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe LOCALGROUP > %~d0\Memory\user_groups_net_localgroups.txt & exit"
TIMEOUT 1  
rem start  %~d0\tools\cmd_x86.exe /k "%~d0\Tools\System32_x86\net.exe VIEW > %~d0\Memory\available_servers_net_view.txt & TIMEOUT 45 & exit" 
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ForensicToolkit20\HFind.exe c: > %~d0\Memory\Files_Hidden_Attributes_C.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ForensicToolkit20\HFind.exe d: > %~d0\Memory\Files_Hidden_Attributes_d.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ForensicToolkit20\HFind.exe e: > %~d0\Memory\Files_Hidden_Attributes_e.txt & exit"
TIMEOUT 1 
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ForensicToolkit20\HFind.exe f: > %~d0\Memory\Files_Hidden_Attributes_f.txt & exit"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ForensicToolkit20\HFind.exe g: > %~d0\Memory\Files_Hidden_Attributes_g.txt & exit"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -r > %~d0\Memory\Remote_logins_NTlast_r.txt & exit"
TIMEOUT 3
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -f > %~d0\Memory\Failed_logins_NTlast_f.txt & exit"
TIMEOUT 3
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -i > %~d0\Memory\Interactive_logins_NTlast_i.txt & exit"
TIMEOUT 31
start  %~d0\tools\cmd_x86.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -s > %~d0\Memory\Successful_logins_NTlast_s.txt & exit"
TIMEOUT 3
%~d0\tools\powershell_x86.exe get-psdrive -psprovider filesystem > %~d0\Memory\drives.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:a /a /s /o:d c: > %~d0\Memory\file_access_time_c.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:w /a /s /o:d  c: > %~d0\Memory\file_modification_time_c.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:c /a /s /o:d  c: > %~d0\Memory\file_creation_time_c.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:a /a /s /o:d d: > %~d0\Memory\file_addess_time_d.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:w /a /s /o:d  d: > %~d0\Memory\file_modification_time_d.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:d /a /s /o:d  d: > %~d0\Memory\file_creation_time_d.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:a /a /s /o:d e: > %~d0\Memory\file_addess_time_e.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:w /a /s /o:d  e: > %~d0\Memory\file_modification_time_e.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:d /a /s /o:d  e: > %~d0\Memory\file_creation_time_e.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:a /a /s /o:d f: > %~d0\Memory\file_addess_time_f.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:w /a /s /o:d  f: > %~d0\Memory\file_modification_time_f.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:d /a /s /o:d  f: > %~d0\Memory\file_creation_time_f.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:a /a /s /o:d g: > %~d0\Memory\file_addess_time_g.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:w /a /s /o:d  g: > %~d0\Memory\file_modification_time_g.txt"
TIMEOUT 1
start  %~d0\tools\cmd_x86.exe /k  "dir /t:d /a /s /o:d  g: > %~d0\Memory\file_creation_time_g.txt"
TIMEOUT 10