# A Framework of Scripts and tools to automate Live Incident Response


Key features include:

- Acquisistion of Physical memory (via dumpit.exe) capturing kernel and user space
- Runs a series of live tools (mostly WinSysinternal and System32 tools) enumerating a system and collecting all pertinent information such as: networking information, important system events - such as new user added, networking information, File MAC times, startup programs, scheduled tasks and much more
- Option to check tool integrity (via fciv.exe)
- Option to check C:\Windows\System32 Dll integrity (due to Windows known DLL feature it is almost impossible to run any program on Windows without using DLL's from C:\Windows\System32 so it is a very good idea to check DLL's to avoid inadvertantly loading a compromised DLL
- Evidence i.e the output of the tools can be writen to any local or network drive via SMB



Useage:

1) create the folder you wish to output the evidence to, this could be on the USB, the compromised machine itself or a network drive. 

2) Copy the file paht to the evidence folder e.g \\192.168.1\evidence_hdd\evidence you will need to provide it when asked where you wish to store evidence (1st question)

2) Simply plugin the USB Drive and run the .bat script runme_as_admin_x64.bat ad administrator and it will launch a cmd window which will guide you through the process



****if you experience issues check that the sytem32 folder on USB matches the one on the sytem you are investigating e.g if the system being investigated is Win10 copy from a trusted Win10 system - in some cases it doesn't seem to matter if the system32 tools such as ipconfig.exe are copied from a differnet OS, e.g ipconfig.exe copied from Win7 running on Win10, others can be more finicy, best practice is to replace the sytstem32 directory on the USB with one copied from a matching Operating System version and then run create_hashes_run_as_user.bat (tools folder) to update hash values. 

**the System32 folder in the image was copied from a trusted Win7Sp1 64 bit machine


If you wish to add your own tools or change existing tools you will need to run create_hashes_run_as_user.bat (in tools folder) to generate new hashes and save as xml for fciv to check against when script is ran live.

