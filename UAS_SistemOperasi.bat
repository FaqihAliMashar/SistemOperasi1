@echo off
color 7
:login
cls
echo ********************************************************************
echo                                  LOGIN USER 
echo ********************************************************************
echo.
echo --------------------------------------------------------------------
set /p name=  User:
set /p password= password:
if %password% == faqih ( 

 goto begin
) else (
echo password salah
set /p x = enter.....!!!
 goto login
 )

:begin
cls
echo ==================================================================
echo                            menu utama 
echo ==================================================================
echo 1.Menu Aplikasi 
echo 2.Menu jaringan komputer
echo 3.Menu setting
echo 4.Menu Perbaikan Komputer
echo 5.Menu Akademik
echo 6.Menu Makanan Nusantara
echo 0.keluar
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto Aplikasi
if %pilihan%==2  goto JaringanKomputer
if %pilihan%==3  goto Setting
if %pilihan%==4  goto PerbaikanKomputer
if %pilihan%==5  goto Akademik
if %pilihan%==6  goto MakananNusantara
if %pilihan%==0  goto Keluar

  rem MENU APLIKASI
    cls
    echo ------ MENU APLIKASI ------
    echo 1. Word
    echo 2. Excel
    echo 3. PowerPoint
    echo 0. Kembali ke Pilihan Yang Utama
    echo ---------------------------
    set /p pilih=Silakan pilih aplikasi : 
    if %pilih%==1 goto word
    if %pilih%==2 goto excel
    if %pilih%==3 goto ppt
    if %pilih%==0 goto :begin

    rem MENU APLIKASI
        :word
        cls
        start winword
        goto aplikasi
        pause
        :excel
        cls
        start excel
        goto aplikasi
        pause
        :ppt
        cls
        start powerpnt
        goto aplikasi
        pause
		goto begin 
		pause

rem MENU JARINGANKOMPUTER
    :jaringankomputer
    cls
    echo ----- MENU JARINGAN -----
    echo 1. Cek IP
    echo 2. Ping Domain
    echo 3. Setting Jaringan
    echo 4. Diagnostic Tool
    echo 0) Kembali ke Menu pilijan yang  Utama
    echo -------------------------
    set /p pilih=Silakan pilih opsi jaringan :
    if %pilih%==1 goto ip
    if %pilih%==2 goto ping
    if %pilih%==3 goto snk
    if %pilih%==4 goto dx
    if %pilih%==0 goto :begin

    rem MENU jARINGAN
        :ip
        cls
        ipconfig
        goto jaringan
        pause
        :ping
        cls
        set /p domain=Masukkan nama domain: 
        ping %domain%
        goto jaringan
        pause
        :snk
        cls
        start ncpa.cpl
        goto jaringan
        pause
        :dx
        cls
        start dxdiag
        goto jaringan
        pause
		goto begin 
		pause
		
 rem setting
:setting 
cls
echo ---------------------------------------------------------
echo                          setting komputer
echo ---------------------------------------------------------
echo                  [1] setting keyboard 
echo                  [2]Setting     Language
echo                  [3]Setting    date
echo                  [4]Add User
echo                  [5]Sound Control
echo                  [6]Open Startup
echo                  [7]chrome
echo                  [8]registing
echo                  [9] kembali                           [0] 	keluar
echo.

set /p "pilihan=Masukkan Pilihan Menu:"
if %pilihan%==1  goto keyboard
if %pilihan%==2  goto Language
if %pilihan%==3  goto  Date
if %pilihan%==4  goto User
if %pilihan%==5  goto Sound
if %pilihan%==6  goto Startup
if %pilihan%==7  goto chrome
if %pilihan%==8  goto reg
if %pilihan%==9 goto back
if %pilihan%==0  goto exit 

		:Keyboard
		cls
		start control Keyboard
		goto setting
		pause
		:Language
		cls
		start intl.cpl 
		goto setting
		pause 
		:Date
		cls
		start timedate.cpl
		goto setting
		:User
		cls
		start Netplwiz.exe
		goto setting
		pause
		:Sound
		cls
		start SndVol.exe
		goto setting
		pause
		:Startup
		start msconfig
		goto setting
		pause
		:chrome
		"C:\Program Files (x86)\Google\Chrome\Application\chrome"
		goto setting
		pause
		:reg
		cls
	    start regedit
		pause
		goto setting
		:back
		goto setting
		:exit
		exit
		goto begin
		pause 
rem perbaikan komputer
:perbaikankomputer
cls
echo ==================================================================
echo                            menu perbaikan komputer 
echo ==================================================================
echo 1.scan virus
echo 0.kembali
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto scan virus
if %pilihan%==0  goto kembali

rem perbaikan komputer
:Perbaikan
cls
@echo off
title Virus Scan Batch Script

REM Pastikan Anda menggantikan "C:\Path\To\Scan" dengan direktori yang ingin Anda periksa.
set "scan_folder=C:\Path\To\Scan"

REM Pastikan Anda menggantikan "C:\Program Files\Windows Defender\MpCmdRun.exe" dengan jalur ke MpCmdRun.exe pada sistem Anda.
set "defender_exe=C:\Program Files\Windows Defender\MpCmdRun.exe"

echo Scanning folder %scan_folder% for viruses...
"%defender_exe%" -Scan -ScanType 3 -File "%scan_folder%"

echo Virus scan completed.
pause
goto perbaikankomputer

		
rem akademik
:akademik
cls
cls
echo ==================================================================
echo                            menu akademik
echo ==================================================================
echo 1.Penilaian mahasiswa 
echo 2.Laporan penilaian mahasiswa/KHS (bentuk txt)
echo 3.Aplikasi Perhitungan
echo 0.keluar
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto Penilaian
if %pilihan%==2. goto KHS
if %pilihan%==3. goto Perhitungan
if %pilihan%==0. goto :begin

rem akademik
:penilaian
	cls 
	@echo off

	rem akademmik
	set /p nim=Masukkan NIM  = 
	set /p nama=Masukkan Nama Lengkap = 
	set /p kelas=Masukkan Kelas = 
	set /p prodi=Masukkan Nama Prodi = 

	rem akademik
	set /p Bhs_indo=Nilai bahasa indonesia: 
	set /p Bhs_ing=Nilai bahasa inggris: 
	set /p Pd=Nilai pemrograman dasar: 
	set /p Mtk=Nilai matematika: 
	set /p Kal1=Nilai kalkulus 1: 
	set /p So=Nilai sistem operasi: 

	rem akademik
	set /a rata=(Bhs_indo+Bhs_ing+Pd+Mtk+Kal1+So)/6

	if %rata% gtr 0 if %rata% leq 60 (
		set grade_rata=C
	) else if %rata% gtr 60 if %rata% leq 75 (
		set grade_rata=B
	) else if %rata% gtr 75 if %rata% leq 85 (
		set grade_rata=AB
	) else if %rata% gtr 85 if %rata% leq 100 (
		set grade_rata=A
	) else (
		set grade_rata=Grade Anda Tidak Ditemukan
	)

	if %Bhs_indo% gtr 0 if %Bhs_indo% leq 60 (
		set grade_indo=C
	) else if %Bhs_indo% gtr 60 if %Bhs_indo% leq 75 (
		set grade_indo=B
	) else if %Bhs_indo% gtr 75 if %Bhs_indo% leq 85 (
		set grade_indo=AB
	) else if %Bhs_indo% gtr 85 if %Bhs_indo% leq 100 (
		set grade_indo=A
	) else (
		set grade_indo=Grade Anda Tidak Ditemukan
	)

	if %Bhs_ing% gtr 0 if %Bhs_ing% leq 60 (
		set grade_ing=C
	) else if %Bhs_ing% gtr 60 if %Bhs_ing% leq 75 (
		set grade_ing=B
	) else if %Bhs_ing% gtr 75 if %Bhs_ing% leq 85 (
		set grade_ing=AB
	) else if %Bhs_ing% gtr 85 if %Bhs_ing% leq 100 (
		set grade_ing=A
	) else (
		set grade_ing=Grade Anda Tidak Ditemukan
	)

	if %Pd% gtr 0 if %Pd% leq 60 (
		set grade_Pd=C
	) else if %Pd% gtr 60 if %Pd% leq 75 (
		set grade_Pd=B
	) else if %Pd% gtr 75 if %Pd% leq 85 (
		set grade_Pd=AB
	) else if %Pd% gtr 85 if %Pd% leq 100 (
		set grade_Pd=A
	) else (
		set grade_Pd=Grade Anda Tidak Ditemukan
	)

	if %Mtk% gtr 0 if %Mtk% leq 60 (
		set grade_Mtk=C
	) else if %Mtk% gtr 60 if %Mtk% leq 75 (
		set grade_Mtk=B
	) else if %Mtk% gtr 75 if %Mtk% leq 85 (
		set grade_Mtk=AB
	) else if %Mtk% gtr 85 if %Mtk% leq 100 (
		set grade_Mtk=A
	) else (
		set grade_Mtk=Grade Anda Tidak Ditemukan
	)

	if %Kal1% gtr 0 if %Kal1% leq 60 (
		set grade_Kal1=C
	) else if %Kal1% gtr 60 if %Kal1% leq 75 (
		set grade_Kal1=B
	) else if %Kal1% gtr 75 if %Kal1% leq 85 (
		set grade_Kal1=AB
	) else if %Kal1% gtr 85 if %Kal1% leq 100 (
		set grade_Kal1=A
	) else (
		set grade_Kal1=Grade Anda Tidak Ditemukan
	)

	if %So% gtr 0 if %So% leq 60 (
		set grade_So=C
	) else if %So% gtr 60 if %So% leq 75 (
		set grade_So=B
	) else if %So% gtr 75 if %So% leq 85 (
		set grade_So=AB
	) else if %So% gtr 85 if %So% leq 100 (
		set grade_So=A
	) else (
		set grade_So=Grade Anda Tidak Ditemukan
	)

	rem akademik 
	echo ------------------------------------------------
	echo                     KARTU HASIL STUDI           
	echo ------------------------------------------------
	echo Nim          : %nim%
	echo Nama lengkap : %nama%
	echo kelas        : %kelas%
	echo Program Studi: %prodi%
	echo --------------------------
	echo No   Nama   Makul   Nilai   Grade
	echo --------------------------
	echo 1. Bahasa Indonesia  : %Bhs_indo% %grade_indo%
	echo 2. Bahasa Inggris    : %Bhs_ing% %grade_ing%
	echo 3. Pemrograman Dasar : %Pd% %grade_Pd%
	echo 4. Matematika        : %Mtk% %grade_Mtk%
	echo 5. Kalkulus 1        : %Kal1% %grade_Kal1%
	echo 6. Sistem Operasi    : %So% %grade_So%
	echo --------------------------
	echo Rata-rata: %rata% %grade_rata%
	echo --------------------------
	pause
	goto begin 
	pause

rem akademik
:KHS
cls 
@echo off

rem akademik
set nim=20122060
set nama=Faqih
set kelas=2A
set prodi=Informatika
set Bhs_indo=76
set Bhs_ing=70
set Pd=90
set Mtk=65
set Kal1=67
set So=75

rem akademik
set /a rata=(Bhs_indo + Bhs_ing + Pd + Mtk + Kal1 + So) / 6

rem akademik
echo Nim Anda          : %nim% > laporan.txt
echo Nama lengkap Anda : %nama% >> laporan.txt
echo Kelas             : %kelas% >> laporan.txt
echo Program Studi     : %prodi% >> laporan.txt
echo. >> laporan.txt
echo -------------------------- >> laporan.txt
echo Hasil Kartu Hasil Studi >> laporan.txt
echo --------------------------- >> laporan.txt
echo 1. Bahasa Indonesia   : %Bhs_indo% >> laporan.txt
echo 2. Bahasa Inggris     : %Bhs_ing% >> laporan.txt
echo 3. Pemrograman Dasar  : %Pd% >> laporan.txt
echo 4. Matematika         : %Mtk% >> laporan.txt
echo 5. Kalkulus 1         : %Kal1% >> laporan.txt
echo 6. Sistem Operasi     : %So% >> laporan.txt
echo ------------------------- >> laporan.txt
echo Rata-rata             : %rata% >> laporan.txt
echo ------------------------- >> laporan.txt

echo Laporan penilaian mahasiswa telah dibuat dalam file laporan.txt.
goto begin
pause

:perhitungan
cls 
@echo off

REM aplikasi perhitungan
set nim=20122060
set nama=Faqih
set kelas=2A
set prodi=Informatika

REM aplikasi perhitungan
set Bhs_indo=76
set Bhs_ing=70
set Pd=90
set Mtk=65
set Kal1=67
set So=75

REM  aplikasi Perhitungan
set /a rata=(Bhs_indo + Bhs_ing + Pd + Mtk + Kal1 + So) / 6

REM Cetak Hasil
echo Nim Anda          : %nim%
echo Nama lengkap Anda : %nama%
echo Kelas             : %kelas%
echo Program Studi     : %prodi%
echo --------------------------
echo Hasil Kartu Hasil Studi
echo ---------------------------
echo 1. Bahasa Indonesia   : %Bhs_indo%
echo 2. Bahasa Inggris     : %Bhs_ing%
echo 3. Pemrograman Dasar  : %Pd%
echo 4. Matematika         : %Mtk%
echo 5. Kalkulus 1         : %Kal1%
echo 6. Sistem Operasi     : %So%
echo -------------------------
echo Rata-rata             : %rata%
echo -------------------------
goto Akademik
pause
goto begin
pause

rem makanan musantara
:MakananNusantara
cls
echo makanan rendang 
pause 
goto begin 

:keluar
exit
