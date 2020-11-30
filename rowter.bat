@echo OFF
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
netsh interface ipv4 set address name="Ethernet 2" dhcp
pause
exit

