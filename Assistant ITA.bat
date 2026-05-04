@echo off
title Assistant
color 0f
goto start

:start
title Assistant 
cls
echo Benvenuto in Assistant
echo Premi un pulsante per iniziare...
pause>nul
:start2
title Assistant (Menu) 
cls
echo.
echo Seleziona un opzione scrivendo il numero vicino ad esso (Non usare spazi)
echo.
echo Avviso: Quando apri la terza opzione (3), non potrai piu ritornare al menu,
echo esci e ri-apri il file per ritornare qui. 
echo.
echo 1 : Visualizza Drivers                                     (Scrivi INFO Per avere Info)
echo 2 : Crea una Cartella                                      (Scrivi COLOR per cambiare il colore del testo)
echo 3 : Windows command interpreter (CMD)
echo 4 : Countdown (Creato da Raven Codes)
echo 5 : Apri Un File
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
echo                                                                                     (c) All right reserved, 2026, Baller

set /p choice= Numero : 

if %choice% == COLOR goto color
if %choice% == INFO goto info
if %choice% == 1 goto 1
if %choice% == 2 goto 2
if %choice% == 3 goto 3
if %choice% == 4 goto 4
if %choice% == 5 goto 5
if else == goto numbnotval

:numbnotval
echo Il numero/codice inserito non e valido! 
pause>nul
goto start2

:color
cls
echo Seleziona il colore del testo scrivendo il numero vicino ad esso
echo.
echo 1 : Bianco (Colore Predefinito)
echo 2 : Azzurro
echo 3 : Rosso
echo 4 : Viola
echo 5 : Giallo
echo 6 : Verde Limone
echo.

set /p colchoice= Colore : 

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
echo Assistant e un compagno di computer che ti aiuta in compiti diversi                              (1.0 Versione Italiana)
echo.
echo Qui sotto potrai trovare la spiegazione delle opzioni  :
echo.
echo 1 Visualizza Drivers : Questa opzione ti fa visualizzare tutti i driver del computer.
echo 2 Crea una Cartella : Questa opzione ti permette di creare una cartella (Verra creata nella cartella di assistant).
echo 3 Windows command interpreter (CMD) : Questa opzione inizia una nuova istanza del programma Windows command interpreter.
echo 4 Countdown : Un normale timer in secondi (Creato da Raven Codes, postato su https://www.instructables.com)
echo 5 Apri Un Programma : Questa opzione apre un file a piacere.
echo.
echo Disclaimer : Assistant non è responsabile di eventuali danni che potrebbero essere recati al tuo computer.
echo.
echo                                                                                      (c) All right reserved, 2026, Baller
echo.
echo Premi un pulsante per ritornare...
pause>nul
goto start2

:1
title Assistant (Visualizza Drivers) 
cls
driverquery
echo Premi un pulsante per ritornare...
pause>nul 
goto start2

:2
title Assistant (Crea una cartella)
cls
set DRNAME=
set /P DRNAME= Inserisci il nome della cartella (se scrivi con spazio, piu cartelle verrano create) : 
md %DRNAME%
echo La cartella e stata creata con il nome selezionato. 
echo Premi un pulsante per ritornare...
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
title Assistant (Countdown) Creato da Raven Codes

cls
echo Inserisci il tempo da contare (Secondi).

set/p "time=>
set time=%time%

:loop
cls

set /a time=%time%-1
if %time%==0 goto timesup

title Contando...

echo.
echo.

echo.
echo Countdown - [%time%]

ping localhost -n 2 > nul
goto loop

:timesup
title Assistant (Countdown) Creato Da Raven Codes
echo Tempo finito!!
echo.
echo Premi un pulsante per ritornare...
pause>nul
goto start2

:5 
title Assistant (Apri Un File)
cls
set DRNAME2=
set /P DRNAME2= Inserisci il nome del file che vuoi aprire  : 
start %DRNAME2%
exit
