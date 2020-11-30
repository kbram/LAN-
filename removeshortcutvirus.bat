@echo OFF
set /p input=Enter drive name :
%input%:
attrib -s -r -h *.* /s /d /l
pause
exit