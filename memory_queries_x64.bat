set /p d=<%~d0\Scripts\var.txt
echo %d%
mkdir  "%d%\Memory\File_MAC_times_and_attributes" 2> NUL
mkdir  "%d%\Memory\System_logs_and_events" 2> NUL
mkdir  "%d%\Memory\Running_processes_and_services" 2> NUL
mkdir  "%d%\Memory\Network_info" 2> NUL
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\tasklist.exe /M > "%d%\Memory\Running_processes_and_services\tasklist_M.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\tasklist.exe /V > "%d%\Memory\Running_processes_and_services\tasklist_V.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\SysinternalsSuite\handle64.exe -a > "%d%\Memory\handle_open_files_a.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\tasklist.exe /SVC > "%d%\Memory\Running_processes_and_services\tasklist_SVC.txt" & exit"
start /B %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\paste.exe > "%d%\Memory\clipboard.txt" & exit"
TIMEOUT 1  
start /B %~d0\tools\cmd\cmd_x64.exe /k "date > "%d%\Memory\date.txt" & exit"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k "time > "%d%\Memory\time.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k " %~d0\Tools\SysinternalsSuite\handle64.exe > "%d%\Memory\File_MAC_times_and_attributes\open_files_handle.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\PsLoggedon64.exe > "%d%\Memory\System_logs_and_events\Logged_in_User_PsLoggedon.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\psloglist.exe > "%d%\Memory\System_logs_and_events\Sys_Event_logs_psloglist.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\autorunsc64.exe > "%d%\Memory\System_logs_and_events\auto-start.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\psinfo64.exe > "%d%\Memory\sysinfo_psinfo.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\coreinfo.exe > "%d%\Memory\logical_to_physical_memory_coreinfo.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\psfile64.exe > "%d%\Memory\System_logs_and_events\files_opened_remotely_psfile.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\pslist64.exe -m > "%d%\Memory\Running_processes_and_services\running_proccess_pslist_m.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\pslist64.exe -d > "%d%\Memory\Running_processes_and_services\running_proccess_pslist_d.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\pslist64.exe -t > "%d%\Memory\Running_processes_and_services\running_proccess_pslist_t.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\wbem\WMIC.exe BIOS Get Manufacturer > "%d%\Memory\BIOSInfo.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\pslist.exe > "%d%\Memory\Running_processes_and_services\running_proccess_pslist.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\listdlls.exe > "%d%\Memory\listdlls.txt" & exit"
TIMEOUT 1 

ECHO GIVING WINDOWS A CHANCE TO CATCHUP
TIMEOUT 120 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\listdlls.exe -u > "%d%\Memory\listdlls_unsigned.txt" & exit"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\SysinternalsSuite\psservice.exe > "%d%\Memory\Running_processes_and_services\Running_Services_tpsservice.txt" & exit"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\systeminfo.exe > "%d%\Memory\systeminfo_cmd.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe user > "%d%\Memory\System_logs_and_events\accountsnet_user.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\netstat.exe -ano > "%d%\Memory\Network_info\netstat.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "set > "%d%\Memory\environment_variables_set.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\ipconfig.exe /displaydns > "%d%\Memory\Network_info\DNS_cache.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\ipconfig.exe /allcompartments /all > "%d%\Memory\Network_info\IPConfig_all_compartements.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe start  > "%d%\Memory\Running_processes_and_services\Running_Services_net_start.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\sc.exe queryex type= service state= all > "%d%\Memory\Running_processes_and_services\sc_queryex_type_all_services_sc.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\arp.exe -a >  "%d%\Memory\Network_info\arp_cache.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\query.exe user >  "%d%\Memory\System_logs_and_events\logged_in_user.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\netstat.exe -se >  "%d%\Memory\Network_info\netstat_stats.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\driverquery.exe > "%d%\Memory\driverquery.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\route.exe PRINT > "%d%\Memory\Network_info\routing_table.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "wmic startup get caption,command  > "%d%\Memory\System_logs_and_events\start_up_programs_wmic.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe share > "%d%\Memory\network_shares_net.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\wbem\wmic.exe os get osarchitecture > "%d%\Memory\arch_wmic.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\schtasks.exe /query /v /fo LIST > "%d%\Memory\System_logs_and_events\scheduled_tasks.txt" & exit"
TIMEOUT 1 
start /B %~d0\Scripts\Net_User_Loop_x64.bat 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\wbem\wmic.exe process list full > "%d%\Memory\Running_processes_and_services\process_list_full_wmic.txt" & exit"
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe VIEW \\127.0.0.1 > "%d%\Memory\local_shares_net_view.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe SESSION /LIST > "%d%\Memory\user_sessions_net_session.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe ACCOUNTS > "%d%\Memory\account_policy_net_account.txt" & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe LOCALGROUP > "%d%\Memory\user_groups_net_localgroups.txt" & exit"
TIMEOUT 1  
start /B  %~d0\tools\cmd\cmd_x64.exe /k "%~d0\Tools\System32_x64\net.exe VIEW > "%d%\Memory\available_servers_net_view.txt" & TIMEOUT 45 & exit" 
TIMEOUT 1 
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -r > "%d%\Memory\System_logs_and_events\Remote_logins_NTlast_r.txt" & exit"
TIMEOUT 3
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -f > "%d%\Memory\System_logs_and_events\Failed_logins_NTlast_f.txt" & exit"
TIMEOUT 3
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -i > "%d%\Memory\System_logs_and_events\Interactive_logins_NTlast_i.txt" & exit"
TIMEOUT 31
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "%~d0\Tools\ntlast30\NTlast.exe -s > "%d%\Memory\System_logs_and_events\Successful_logins_NTlast_s.txt" & exit"
TIMEOUT 3
%~d0\tools\Powershell\powershell_x64.exe get-psdrive -psprovider filesystem > "%d%\Memory\drives.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:a /a /s /o:d c: > "%d%\Memory\File_MAC_times_and_attributes\file_access_time_c.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:w /a /s /o:d  c: > "%d%\Memory\File_MAC_times_and_attributes\file_modification_time_c.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:c /a /s /o:d  c: > "%d%\Memory\File_MAC_times_and_attributes\file_creation_time_c.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:a /a /s /o:d d: > "%d%\Memory\File_MAC_times_and_attributes\file_addess_time_d.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:w /a /s /o:d  d: > "%d%\Memory\File_MAC_times_and_attributes\file_modification_time_d.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:d /a /s /o:d  d: > "%d%\Memory\File_MAC_times_and_attributes\file_creation_time_d.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:a /a /s /o:d e: > "%d%\Memory\File_MAC_times_and_attributes\file_addess_time_e.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:w /a /s /o:d  e: > "%d%\Memory\File_MAC_times_and_attributes\file_modification_time_e.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:d /a /s /o:d  e: > "%d%\Memory\File_MAC_times_and_attributes\file_creation_time_e.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:a /a /s /o:d f: > "%d%\Memory\File_MAC_times_and_attributes\file_addess_time_f.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:w /a /s /o:d  f: > "%d%\Memory\File_MAC_times_and_attributes\file_modification_time_f.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:d /a /s /o:d  f: > "%d%\Memory\File_MAC_times_and_attributes\file_creation_time_f.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:a /a /s /o:d g: > "%d%\Memory\File_MAC_times_and_attributes\file_addess_time_g.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:w /a /s /o:d  g: > "%d%\Memory\File_MAC_times_and_attributes\file_modification_time_g.txt"
TIMEOUT 1
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "dir /t:d /a /s /o:d  g: > "%d%\Memory\File_MAC_times_and_attributes\file_creation_time_g.txt"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4720)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4720_user_added.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4726)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4726_user_deleted.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4725)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4725_user_disabled.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4722)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4722_user_enabled.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4723)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4723_password_change_attempt.txt" & exit"

TIMEOUT 25
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4724)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4724_password_reset.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4738)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4738_user_account_change.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4732)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\\4732_user_group_add_or_delete.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=7035)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\7035_service_stopped.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=7036)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\7036_service_started.txt" & exit"
start /B  %~d0\tools\cmd\cmd_x64.exe /k  "wevtutil qe security /q:"*[System[(EventID=4767)]]" /c:5 /f:text /rd:true > "%d%\Memory\System_logs_and_events\4767_user_account_unlocked.txt" & exit"
ECHO GIVING WINDOWS A CHANCE TO CATCHUP
TIMEOUT 240
