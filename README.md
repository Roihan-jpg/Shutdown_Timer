# ⏱️ Windows Auto Shutdown CLI

A lightweight, no-installation batch script to schedule automatic shutdowns on Windows machines. Built for simplicity and efficiency without the need for third-party bloatware.

![Platform](https://img.shields.io/badge/Platform-Windows-0078D6?style=flat-square&logo=windows&logoColor=white)
![Language](https://img.shields.io/badge/Language-Batch-4D4D4D?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

## ✨ Features

- **Timer Mode:** Schedule shutdown by inputting minutes (e.g., 60 minutes).
- **Cancel Option:** Easily abort a scheduled shutdown if you change your mind.
- **Lightweight:** Runs directly using Windows Command Prompt (CMD).
- **Safe:** Uses standard Windows `shutdown` commands.

## 🚀 How to Use

1. **Download** the `ShutdownTimer.bat` file from this repository.
2. **Double-click** the file to run.
3. Choose an option from the menu:
   - `[1]` Set Timer (Input minutes).
   - `[3]` Cancel Shutdown.
4. Keep the window open or close it; the timer will run in the background.

## 🛠️ The Script

If you prefer to create the file manually, simply paste this code into Notepad and save it as `.bat`:

```batch
@echo off
title Shutdown Timer
color 0A

:start
cls
echo ==========================================
echo    WINDOWS AUTO SHUTDOWN SCHEDULER
echo ==========================================
echo.
echo [1] Set Timer (in Minutes)
echo [2] Cancel Shutdown
echo [3] Exit
echo.
set /p option="Enter Option: "

if %option%==1 goto timer_mode
if %option%==2 goto cancel
if %option%==3 goto exit

:timer_mode
cls
echo Enter duration in MINUTES (e.g., 60 for 1 hour)
set /p minutes="Minutes: "
set /a seconds=%minutes%*60
shutdown -s -t %seconds%
echo.
echo [SUCCESS] System will shutdown in %minutes% minutes.
pause
exit

:cancel
shutdown -a
cls
echo.
echo [CANCELED] Scheduled shutdown has been aborted.
pause
goto start

:exit
exit
