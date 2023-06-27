@echo  off
title latihan 
:begin
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




