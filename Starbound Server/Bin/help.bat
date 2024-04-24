@echo off

findstr ""ServerRestartTimer" :" configs\RestartTimer.config > Vara.txt
findstr ""BootConfigLocation" :" configs\BootConfigLocation.config > Varb.txt
findstr ""LogfileLocation" :" configs\LogfileLocation.config > Varc.txt
findstr ""LogLevel" :" configs\LogLevel.config > Vard.txt
set /P varA=<Vara.txt
set /P varB=<Varb.txt
set /P varC=<Varc.txt
set /P varD=<Vard.txt
del Vara.txt
del Varb.txt
del Varc.txt
del Vard.txt
set varA=%varA:~24%
set varB=%varB:~27%
set varC=%varC:~24%
set varD=%varD:~17%
echo %varA%
echo %varB%
echo %varC%
echo %varD%
pause