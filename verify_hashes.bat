%~d0\tools\fciv\fciv.exe  sha1 -v -xml %~d0\tools\main.xml >> %~d0\Tools\fciv\Logs\main_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml cmd.xml >> %~d0\Tools\fciv\Logs\cmd_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\Dumpit.xml >> %~d0\Tools\fciv\Logs\Dumpit_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\SysinternalsSuite_hashes.xml >> %~d0\Tools\fciv\Logs\Systeminternals_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\System32_x64.xml >> %~d0\Tools\fciv\Logs\System32_x64_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\coreutils.xml >> %~d0\Tools\fciv\Logs\coureutils_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\ForensicToolkit20.xml >> %~d0\Tools\fciv\Logs\ForensicToolkit20_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\netcat.xml >> %~d0\Tools\fciv\Logs\netcat_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\ntlast30.xml >> %~d0\Tools\fciv\Logs\ntlast30_verified.txt 
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\UnxUtils.xml >> %~d0\Tools\fciv\Logs\UnxUtils_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\Winpcap.xml >> %~d0\Tools\fciv\Logs\Winpcap_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\DD.xml >> %~d0\Tools\fciv\Logs\DD_verified.txt
TIMEOUT 1
%~d0\tools\fciv\fciv.exe -sha1 -v -xml %~d0\tools\Powershell.xml >> %~d0\Tools\fciv\Logs\Powershell_verified.txt
