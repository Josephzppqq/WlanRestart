@echo off
setlocal enabledelayedexpansion
set /a sum=0
set /a i=1
:start
set /a sum+=!i!
echo --------��---!sum!---��--------
netsh wlan disconnect
::nameΪ������
netsh wlan connect name=54-101
::180����
timeout /T 180 /NOBREAK
cls
goto start
pause