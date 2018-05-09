@echo off 
setlocal enabledelayedexpansion 
set partieasupprimer=0

for /f "delims==" %%F in ('dir /b ^| find "%partieasupprimer%"') do ( 
	 set oldfilename=%%F 
	 set newfilename=!oldfilename:%partieasupprimer%=! 
	 Ren "!oldfilename!" "!newfilename!" 
	 )