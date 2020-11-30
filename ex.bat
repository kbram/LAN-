@echo off
setlocal EnableDelayedExpansion
(set LF=^
%= empty line =%
)
set "output="
set "x="
for /F "tokens=1* delims=:" %%E in ('getmac /V /FO LIST ^| findstr /N /R "^"') do (
    set "output=%%F"
	echo !output!
)
echo/!output!
endlocal
pause