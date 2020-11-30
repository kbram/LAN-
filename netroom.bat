@echo OFF
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d 172.16.0.1:3128 /f
netsh interface ipv4 set address name="Ethernet 2" static 172.16.2.18 255.255.0.0
pause
exit
