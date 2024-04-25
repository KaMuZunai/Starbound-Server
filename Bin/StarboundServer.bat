@echo off
setlocal EnableDelayedExpansion
title Starbound Master
findstr ""Color" :" configs\CmdWindowColors.config > Vare.txt
set /P varE=<Vare.txt
del Vare.txt
set varE=%varE:~11%
color %varE%

:RestartServer

title Starting Starbound Server...
echo ////////////////////////////////////////////////////////////////
echo Starting Server...
echo ////////////////////////////////////////////////////////////////

findstr ""ServerRestartTimer" :" configs\RestartTimer.config > Vara.txt
findstr ""BootConfigLocation" :" configs\BootConfigLocation.config > Varb.txt
findstr ""LogfileLocation" :" configs\LogfileLocation.config > Varc.txt
findstr ""LogLevel" :" configs\LogLevel.config > Vard.txt
findstr ""StarHostVersion" :" configs\BitVersion.config > Varf.txt
set /P varA=<Vara.txt
set /P varB=<Varb.txt
set /P varC=<Varc.txt
set /P varD=<Vard.txt
set /P varF=<Varf.txt
del Vara.txt
del Varb.txt
del Varc.txt
del Vard.txt
del Varf.txt
set varA=%varA:~24%
set varB=%varB:~27%
set varC=%varC:~24%
set varD=%varD:~17%
set varF=%varF:~21%

timeout /t 1 >nul
start "" /min /b %varF% -bootconfig %varB% -loglevel %varD% -logfile %varC%
timeout /t 15 >nul
title Starbound Server Running^^!

for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set countdown=%varA%

:TimerLoop
<nul set /p ".=Server Automatically Restarting in %countdown% seconds...  !cr!"
timeout /t 1 /nobreak >nul
set /a countdown-=1
if %countdown% GEQ 0 goto :TimerLoop
echo ////////////////////////////////////////////////////////////////                                                                           
echo Restarting Server...                                                                             
echo ////////////////////////////////////////////////////////////////                                                                           
title Restarting Server...
timeout /t 1 >nul
taskkill /IM %varF% /F >nul
goto RestartServer