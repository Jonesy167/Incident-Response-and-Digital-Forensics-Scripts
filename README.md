# A bunch of Script to automate elements of Incident Response and Digital Forensics

These scripts are designed to be placed in root of a drive regardless of drive mount letter since they use windows variable %~d0\ to get drive - they can be placed anywhere but will require some modification to file paths.

Simple Batch scripts:

  -"create hashes.bat" and "verify hashes.bat" utilise fciv.exe in order to create a xml file containing hash values (create     hashes.bat) and then checks against the hash values within it (verify hashes.bat)
  
  - "Memory_host_cmd.bat" is used to run a series of cmd, WMI and Powershell queries in order to determine the current state of   the host (Net_User_Loop.bat is a dependancy of the script)
