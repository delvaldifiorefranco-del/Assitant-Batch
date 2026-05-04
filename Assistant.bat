@echo off
title Assistant
color 0f
goto start

:start
title Assistant 
cls
echo Welcome in Assistant
echo Press a button to start...
pause>nul
:start2
title Assistant (Menu) 
cls
echo.
echo Select an option by typing the number adjacent to it (No Spaces)
echo.
echo Notice: When you open the Third option (3), you will not going to be
echo able to return to the menu, just exit and re-open the file to get back here. 
echo.
echo 1 : Display Drivers                                     (Type INFO for Info)
echo 2 : Create Directory                                    (Type COLOR for Changing Text Color)
echo 3 : Windows command interpreter (CMD)                   
echo 4 : Countdown (Made by Raven Codes)
echo 5 : Open A File
echo.
echo.
echo.
echo          AAA             
echo         AA AA        SSSSSSSSSSSS   SSSSSSSSSSS   II   SSSSSSSSSSSS   TTTTTTTT      AAA         NNNN      NN   TTTTTTTT
echo        AA   AA       SS             SS            II   SS                TT        AA AA        NN NN     NN      TT
echo       AA     AA      SS             SS            II   SS                TT       AA   AA       NN  NN    NN      TT
echo      AAAAAAAAAAA     SSSSSSSSSSSS   SSSSSSSSSSS   II   SSSSSSSSSSSS      TT      AA     AA      NN   NN   NN      TT
echo     AA         AA              SS            SS   II             SS      TT     AAAAAAAAAAA     NN    NN  NN      TT
echo    AA           AA             SS            SS   II             SS      TT    AA         AA    NN     NN NN      TT
echo   AA             AA  SSSSSSSSSSSS   SSSSSSSSSSS   II   SSSSSSSSSSSS      TT   AA           AA   NN      NNNN      TT
echo.
echo                                                                                    (c) All right reserved, 2026, Baller

set /p choice= Number : 

if %choice% == COLOR goto color
if %choice% == INFO goto info
if %choice% == 1 goto 1
if %choice% == 2 goto 2
if %choice% == 3 goto 3
if %choice% == 4 goto 4
if %choice% == 5 goto 5
if else == goto numbnotval

:numbnotval
echo Not a valid number or code! 
pause>nul
goto start2

:color
cls
echo Select the text color you want by typing the adjacent number to it
echo.
echo 1 : White (Default Color)
echo 2 : Sky Blue
echo 3 : Red
echo 4 : Purple
echo 5 : Yellow
echo 6 : Lemon Green
echo.

set /p colchoice= Color : 

if %colchoice% == 1 color 0f
if %colchoice% == 2 color 0b
if %colchoice% == 3 color 0c
if %colchoice% == 4 color 0d
if %colchoice% == 5 color 0e
if %colchoice% == 6 color 0a
goto start2

:info
title Assistant (Info)
cls
echo Assistant is a computer companion that helps you in different tasks                              (1.0 Original Version)
echo.
echo Down here you can find the explenation of the different options :
echo.
echo 1 Display Drivers : This option lets you view the Drivers installed in your computer.
echo 2 Create Directory : This option lets you create a directory and name it (It will create it in assistant folder).
echo 3 Windows command interpreter (CMD) : This option starts a new instance of the Windows command interpreter.
echo 4 Countdown : Just a normal countdown in seconds. (Made by Raven Codes, posted on https://www.instructables.com)
echo 5 Open A Program : This option opens a file of your choice.
echo.
echo Disclaimer : Assistant is not responsible for any damage that may be caused to your computer.
echo.
echo                                                                                     (c) All right reserved, 2026, Baller
echo Press a button to return...
pause>nul
goto start2


:1
title Assistant (Display Drivers) 
cls
driverquery
echo Press a button to return...
pause>nul 
goto start2

:2
title Assistant (Create Directory)
cls
set DRNAME=
set /P DRNAME= Type the name of the directory (if you type spaced words, more folders are going to get created) : 
md %DRNAME%
echo The directory has been created with the selected name 
echo Press a button to return...
pause>nul
goto start2

:3
title Assistant (Windows command interpreter)
cls
cmd
pause>nul
exit

:4
cls

:start
title Assistant (Countdown Made by Raven Codes)

cls
echo Enter time to countdown from (Seconds).

set/p "time=>
set time=%time%

:loop
cls

set /a time=%time%-1
if %time%==0 goto timesup

title Counting down...

echo.
echo.

echo.
echo Countdown - [%time%]

ping localhost -n 2 > nul
goto loop

:timesup
title Assistant (Countdown) Made by Raven Codes
echo Time is Up!!
echo.
echo Press a button to return...
pause>nul
goto start2

:5
title Assistant (Open A File)
cls
set DRNAME2=
set /P DRNAME2= Type the name of the file you want to open  : 
start %DRNAME2%
exit
