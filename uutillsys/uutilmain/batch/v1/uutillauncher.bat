@echo off
:menu
cls
echo.
echo                                    88 88 88  
echo                              ,d    "" 88 88  
echo                              88       88 88  
echo 88       88 88       88 MM88MMM 88 88 88  
echo 88       88 88       88   88    88 88 88  
echo 88       88 88       88   88    88 88 88  
echo "8a,   ,a88 "8a,   ,a88   88,   88 88 88  
echo  `"YbbdP'Y8  `"YbbdP'Y8   "Y888 88 88 88  
echo.
echo Please enter one of these numbers:
echo.
echo List:
echo.
echo [1] txtfg (A text file gen.)
echo [2] calc (A calculator.)
echo [q] Quit
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    goto download_option
) else if "%choice%"=="2" (
    goto download_option
) else if /i "%choice%"=="q" (
    exit
) else (
    echo Invalid choice. Please select a valid option.
    pause
    goto menu
)

:download_option
cls
echo [a] Download
set /p download_choice=Enter [a] to download or [q] to go back to the main menu: 
if /i "%download_choice%"=="a" (
    echo Downloading... (Replace with actual download command)
    echo Download successful!
    pause
    goto menu
) else if /i "%download_choice%"=="q" (
    goto menu
) else (
    echo Invalid option. Please enter [a] to download or [q] to go back to the main menu.
    pause
    goto download_option
)
