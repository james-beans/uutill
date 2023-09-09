@echo off

:ASCIIArt
echo.                                             
echo.  88                     88 88              
echo.  88                     88 88              
echo.  88                     88 88              
echo.  88,dPPYba,   ,adPPYba, 88 88  ,adPPYba,   
echo.  88P'    "8a a8P_____88 88 88 a8"     "8a  
echo.  88       88 8PP""""""" 88 88 8b       d8  
echo.  88       88 "8b,   ,aa 88 88 "8a,   ,a8"  
echo.  88       88  `"Ybbd8"' 88 88  `"YbbdP"'   
echo.                                             

setlocal enabledelayedexpansion

echo Please enter your text:
set /p userInput=

rem Remove invalid characters from the file name
set "userInput=!userInput: =_!"  REM Replace spaces with underscores

rem Set the file name and directory
set "fileName=ASCII TEXT ART (!date:/=!).txt"
set "directory=%~dp0"  REM Get the current script directory

rem Save the ASCII art to a text file with the name containing spaces
(
  echo !userInput!
  type ASCIIArt
)>"%directory%!fileName!" 2>nul

echo File created: %fileName%
echo Directory: %directory%

pause
