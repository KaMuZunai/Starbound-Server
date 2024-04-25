@echo off
findstr ""StarHostVersion" :" configs\BitVersion.config > Varf.txt
set /P varF=<Varf.txt
del Varf.txt
set varF=%varF:~21%
cmd /k %varF% -help