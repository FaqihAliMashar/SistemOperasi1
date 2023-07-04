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
echo                            menu
echo ==================================================================
echo 1. menu setting
echo 2. menu restoran
echo 3. exit
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto setting
if %pilihan%==2  goto restoran
if %pilihan%==3  goto exit

:setting
cls
echo ---------------------------------------------------------
echo                          setting komputer
echo ---------------------------------------------------------
echo                  [1] setting keyboard 
echo                  [2]Settig     Language
echo                  [3]Setting    date
echo                  [4]Add User
echo                  [5]Sound Control
echo                  [6]Open Startup
echo                  [7]chrome
echo                  [88] kembali                           [0] 	keluar
echo.

set /p "pilihan=Masukkan Pilihan Menu:"
if %pilihan%==1  goto keyboard
if %pilihan%==2  goto Language
if %pilihan%==3  goto  Date
if %pilihan%==4  goto User
if %pilihan%==5  goto Sound
if %pilihan%==6  goto Startup
if %pilihan%==7  goto chrome
if %pilihan%==88 goto back
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
		:back
		goto setting
		:exit
		exit

:restoran
cls
echo ======================================================
echo                       latihan menu 
echo ======================================================
echo menu program:
echo 1.paket 1( ayam+es teh)
echo 2.paket 2(ayam bakar+teh hangat)
echo 3.paket 3(ayam goreng crispy)
echo 4.paket premium(Gurame+Gulai)
echo 5.paket Gold(Gurame+Seafood)
echo 0. exit
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto 1
if %pilihan%==2  goto 2
if %pilihan%==3  goto 3
if %pilihan%==4  goto 4
if %pilihan%==5  goto 5
if %pilihan%==6  goto 0
:1
cls
echo=======================================================
echo nama paket : paket 1
echo harga      : Rp.50.000
echo keuntungan : ayam+ es teh
echo=======================================================
pause
goto begin	

:2
cls
echo=======================================================
echo nama paket : paket 2
echo harga      : Rp.75.000
echo keuntungan : ayam bakar+teh hangat
echo=======================================================
pause
goto begin	

:3
cls
echo=======================================================
echo nama paket : paket 3
echo harga      : Rp.80.000
echo keuntungan : ayam goreng crispy
echo=======================================================
pause
goto begin

:4
cls
echo=======================================================
echo nama paket : paket 4
echo harga      : Rp.125.000
echo keuntungan : paket premium(gurame+gulai
echo=======================================================
pause
goto begin

:5
cls
echo=======================================================
echo nama paket : paket 5
echo harga      : Rp.250.000
echo keuntungan : paket gold(gurame+seafood)
echo=======================================================
pause
goto begin

:6
cls
exit

:exit
cls
exit 
