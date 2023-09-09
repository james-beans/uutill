@echo off
setlocal enabledelayedexpansion

:TXTFGSYS
rem Set the text color to blue
color 1F

rem Define the TXTFGSYS
set "lines[1]=                                ad88             "             
set "lines[2]=  ,d                  ,d      d8"   ""               "               
set "lines[3]=  88                  88     88                "                
set "lines[4]=MM88MMM 8b,     ,d8 MM88MMM MM88MMM ,adPPYb,d8  "  
set "lines[5]=  88     `Y8, ,8P'    88     88   a8\"\"\"\"\"\"\"\"\"`Y88 "  
set "lines[6]=  88       )888(      88     88   8b       88 "  
set "lines[7]=  88,    ,d8\" \"8b,    88,    88   \"8a,   ,d88 "  
set "lines[8]=  \"Y888 8P'     `Y8   \"Y888  88    `\"YbbdP\"Y8 "  

rem Display the initial TXTFGSYS
for /l %%i in (1,1,8) do (
    echo !lines[%%i]!
)

echo.

echo By obviouslyimbeans on discord
echo.

rem Prompt the user for input
echo Please enter your text:
set /p userInput=

rem Remove invalid characters from the file name
set "userInput=!userInput: =_!"  REM Replace spaces with underscores

rem Set the file name and directory
set "fileName=!userInput!.txt"
set "directory=%~dp0"  REM Get the current script directory

rem Save the TXTFGSYS to a text file with the name provided by the user
(
  for /l %%i in (1,1,8) do (
    echo !lines[%%i]!
  )
  echo.
  echo !userInput!
)>"%directory%!fileName!" 2>nul

echo File created: %fileName%
echo Directory: %directory%

pause
