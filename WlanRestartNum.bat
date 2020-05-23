@echo off
setlocal enabledelayedexpansion
set /a sum=0
set /a i=1
:start
set /a sum+=!i!
echo --------第---!sum!---次--------
netsh wlan disconnect
::name为无线名
netsh wlan connect name=54-101
::180秒间隔
timeout /T 180 /NOBREAK
cls
goto start
pause