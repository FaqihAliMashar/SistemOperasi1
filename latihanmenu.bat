@echo off
title setting My Komputer
:setting
color b5
cls
echo ------------------------------------------------------------
echo                          SETTING KOMPUTER
echo  -----------------------------------------------------------
echo                  [1]Setting 	Keyboard
echo                  [2]Settig     Language
echo                  [3]Setting    date
echo                  [4]Add User
echo                  [5]Sound Control
echo                  [6]Open Startup
echo                  [7]chrome
echo                  [88] kembali                           [0] 	keluar
echo.
set /p "pilihan=Masukkan Pilihan Menu:"
if %pilihan%==1  goto keyboard
if %pilihan%==2  goto Language
if %pilihan%==3  goto  Date
if %pilihan%==4  goto User
if %pilihan%==5  goto Sound
if %pilihan%==6  goto Startup
if %pilihan%==7  goto chrome
if %pilihan%==88 goto back
if %pilihan%==0  goto exit 

:Keyboard
cls
start control Keyboard
goto setting
pause
:Language
cls
start intl.cpl 
goto setting
pause 
:Date
cls
start timedate.cpl
goto setting
:User
cls
start Netplwiz.exe
goto setting
pause
:Sound
cls
start SndVol.exe
goto setting
pause
:Startup
start msconfig
goto setting
pause
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
:back
goto setting
:exit
exit
