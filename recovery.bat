@echo off
set loop=0
:loop
echo Hello World
color 1
color 2
color 3
color 4
color 5
color 6
color 7
color 8
color 9
color 0
set /a loop=%loop%+1 
if "%loop%"=="200" goto exit
goto loop

:exit
EXIT
