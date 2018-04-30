del verify.txt
del %~d0\Tools\fciv\Logs
del %~d0\tools\main.xml
del %~d0\tools\SysinternalsSuite_hashes.xml
del %~d0\tools\Dumpit.xml
del %~d0\tools\System32_x86.xml 
del %~d0\tools\System32_x64.xml
del %~d0\tools\coreutils.xml
del %~d0\tools\ForensicToolkit20.xml
del %~d0\tools\netcat.xml 
del %~d0\tools\ntlast30.xml 
del %~d0\tools\UnxUtils.xml 
del %~d0\tools\Winpcap.xml
del %~d0\tools\cmd.xml
del %~d0\tools\DD.xml
del %~d0\tools\Powershell.xml
del fciv.err
TIMEOUT 5
start  %~d0\tools\fciv\fciv.exe main -sha1 -r -xml %~d0\tools\main.xml 
TIMEOUT 5
start  %~d0\tools\fciv\fciv.exe cmd -sha1 -r -xml %~d0\tools\cmd.xml 
TIMEOUT 2
start  %~d0\tools\fciv\fciv.exe Dumpit -sha1 -r -xml %~d0\tools\Dumpit.xml
TIMEOUT 5
start  %~d0\tools\fciv\fciv.exe SysinternalsSuite -sha1 -r -xml %~d0\tools\SysinternalsSuite_hashes.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe System32_x64 -sha1 -r -xml %~d0\tools\System32_x64.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe coreutils -sha1 -r -xml %~d0\tools\coreutils.xml
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe ForensicToolkit20 -r -sha1 -xml %~d0\tools\ForensicToolkit20.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe netcat -sha1 -r -xml %~d0\tools\netcat.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe ntlast30 -sha1 -r -xml %~d0\tools\ntlast30.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe UnxUtils -sha1 -r -xml %~d0\tools\UnxUtils.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe Winpcap -sha1 -r -xml %~d0\tools\Winpcap.xml 
TIMEOUT 5
start %~d0\tools\fciv\fciv.exe DD -sha1 -r -xml %~d0\tools\DD.xml 
TIMEOUT 2
start %~d0\tools\fciv\fciv.exe Powershell -sha1 -r -xml %~d0\tools\Powershell.xml 
TIMEOUT 2
exit
