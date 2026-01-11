@echo off
title Shutdown Timer by Gemini
color 0A

:start
cls
echo ==========================================
echo    PENJADWALAN SHUTDOWN LAPTOP OTOMATIS
echo ==========================================
echo.
echo Pilih Mode:
echo [1] Set Timer (dalam Menit)
echo [2] Set Jam Tertentu (Format HH:MM)
echo [3] Batalkan Shutdown
echo [4] Keluar
echo.
set /p pilihan="Masukkan Pilihan (1-4): "

if %pilihan%==1 goto timer_mode
if %pilihan%==2 goto jam_mode
if %pilihan%==3 goto cancel
if %pilihan%==4 goto exit

:timer_mode
cls
echo Masukkan durasi waktu dalam MENIT (contoh: 60 untuk 1 jam)
set /p menit="Menit: "
set /a detik=%menit%*60
shutdown -s -t %detik%
echo.
echo [BERHASIL] Laptop akan mati dalam %menit% menit.
echo Jendela ini boleh ditutup.
pause
exit

:jam_mode
cls
echo Masukkan jam berapa laptop harus mati (Format 24 jam, misal 23:00)
echo *Catatan: Fitur ini menggunakan 'at' command atau kalkulasi selisih waktu
echo yang agak kompleks di Batch murni.
echo.
echo Saran: Untuk jam spesifik, lebih mudah gunakan mode Timer dan hitung sisanya,
echo atau gunakan Task Scheduler bawaan Windows.
pause
goto start

:cancel
shutdown -a
cls
echo.
echo [BATAL] Jadwal Shutdown telah dibatalkan.
pause
goto start

:exit
exit