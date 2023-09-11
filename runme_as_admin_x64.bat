@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'" #check script is ran as admin
    exit /b
)

echo ****
set /P d=ENTER THE FILE PATH TO FOLDER WHERE EVIDENCE IS TO BE SAVED e.g \\192.168.1.1\My Passport\evidence             
echo ****


:choice
set /P c=THE PATH TO EVIDENCE IS SET AS %d% IS THIS CORRECT [Y/N]?               
if /I "%c%" EQU "Y" goto :option1
if /I "%c%" EQU "N" goto :option2
goto :choice


:option2
echo ****
set /P d=enter path to evidence folder                 


:option1
rmdir /s /q  "%d%\Memory"
mkdir  "%d%\Memory" 2> NUL
mkdir  "%d%\Memory\File_MAC_times_and_attributes" 2> NUL
mkdir  "%d%\Memory\System_logs_and_events" 2> NUL
mkdir  "%d%\Memory\Running_processes_and_services" 2> NUL
mkdir  "%d%\Memory\Network_info" 2> NUL

:choice
echo ****
set /P c=SHOULD A FULL DUMP OF MEMORY TAKE PLACE [Y/N]?                                 
if /I "%c%" EQU "Y" goto :option1
if /I "%c%" EQU "N" goto :option22a


:option1 
echo ****
echo DUMPIT HASH IS:
%~d0\tools\fciv\fciv.exe %~d0\tools\Dumpit\Dumpit_x64.exe
echo ****

echo THE DUMPIT HASH SHOULD BE AS LISTED BELLOW, CHECK ABOVE AND BELLOW HASH VALUES MATCH
echo ****
type %~d0\tools\Dumpit\dumpithash
ECHO                                                        ****
ECHO ****
:choice
set /P c=DO THE HASH VALUES MATCH [Y/N]?                                 
if /I "%c%" EQU "Y" goto :option1
if /I "%c%" EQU "N" goto :option22
:option22
echo ****
ECHO EXITING DUE TO HASH MISMATCH, CEHCK INTEGRITY OF Dumpit.exe
TIMEOUT 5
exit
:option1
xcopy /I "%~d0\Tools\Dumpit"  "%d%\memory"
pushd "%d%\memory"
"%d%\memory\Dumpit.exe"
chdir /d %~d0\Tools\
start %~d0\tools\fciv\fciv.exe %d%\memory -r -xml %d%\memory_dump.xml -shai1

echo ****
rmdir /s /q  "%d%\system_32_Integrity"

:option22a

:choice
set /P c=DO YOU WISH TO CHECK TOOL HASH VALUES - THIS IS STRONGLY RECOMMENDED [Y/N]?  
if /I "%c%" EQU "Y" goto :option1a
if /I "%c%" EQU "N" goto :option2a

:option1a
echo ****
echo VERIFYING TOOL HASHES ** THIS WILL TAKE 5 - 15 MINUTES **
chdir /d %~d0\Tools\
TIMEOUT 1
call %~d0\Tools\verify_hashes.bat
echo ****

:choice
set /P c=CHECK LOGS TO ENSURE ALL TOOL HASHES ARE VALID, (Tools\fciv\Logs)  ARE THEY CORRECT [Y/N]?               
if /I "%c%" EQU "Y" goto :option1
if /I "%c%" EQU "N" goto :option2

:option2
echo EXITING NOW DUE TO BAD TOOL HASHES
TIMEOUT 10
exit

:option2a
:option1
echo ****

:choice
set /P c=DO YOU WISH TO RUN LIVE MEMORY QUERIES? [Y/N]?                       
if /I "%c%" EQU "Y" goto :option11a
if /I "%c%" EQU "N" goto :option22a
goto :choice

:option22a
echo ****
echo EXITING NOW
TIMEOUT 3
exit


:option11a

:choice
echo ****
set /P c=DO YOU WISH TO VERIFY DLL'S WITHIN C:\windows\system32 BEFORE RUNNING QUERIES FIRST, IT IS STRONGLY ADVISED THAT YOU DO THIS BEFORE RUNNING QUERIES IN ORDER TO PROTECT AGAINST DLL HIJACKING, SINCE c:\windows\system32 DLL's ARE USED WHEN RUNNING QUERIES   [Y/N]?   ** THIS  WILL TAKE A WHILE **                
if /I "%c%" EQU "Y" goto :option1a
if /I "%c%" EQU "N" goto :option2a
goto :choice

:option1a
rmdir "%d%\system_32_Integrity"
mkdir  "%d%\system_32_Integrity" 2> NUL
echo ****
echo "COLLECTING DATA ON c:\windows\system32 DLL's NOW, THIS WILL TAKE APPROX 20-30 MINUTES"
%~d0\Tools\SysinternalsSuite\sigcheck.exe -tv * -c > %d%\system_32_Integrity\cert_check.csv
%~d0\Tools\SysinternalsSuite\sigcheck.exe -s -u -e -c c:\windows\system32\*.dll > %d%\system_32_Integrity\unsigned_dll.csv
%~d0\Tools\SysinternalsSuite\sigcheck.exe -vt -s -vs -u -c c:\windows\system32\*.dll > %d%\system_32_Integrity\virustotal_check_dll.csv



:choice
echo ****
set /P c=PLEASE REVIEW FILES WITHIN system32_integrity, ENURE THAT THE DLL'S CONTAINED WITHIN C:\windows\system32\ HAVE NOT BEEN COMPROMISED BY AN ATTACKER, IF YOU SUSPECT THEY HAVE BEEN - SELECT 'N' TO EXIT, ELSE SELECT 'Y' TO CONTINUE    [Y/N]?               
if /I "%c%" EQU "Y" goto :optionb
if /I "%c%" EQU "N" goto :optiona
goto :choice

:optiona
echo ****
echo "EXITING NOW"
TIMEOUT 5
exit

:option2a
:optionb
echo ****
echo STARTING QUERIES, THIS WILL TAKE APPROX 10 MINUTES
TIMEOUT 5 



call %~d0\Scripts\memory_queries_x64.bat
TIMEOUT 5
ECHO ALL DATA NOW COLLECTED
TIMEOUT 5
ECHO HASHING EVIDENCE FILES
start %~d0\tools\fciv\fciv.exe %d%\ -r -xml %d%\evidencehashes.xml 
TIMEOUT 10
ECHO ALL COMPLETE, CLOSING DOWN NOW
TIMEOUT 5
TASKKILL /F /IM cmd*

