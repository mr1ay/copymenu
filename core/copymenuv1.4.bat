	::
	:: 		The Copy Menu Project (c) 2020
	::
	::   	You can make to copy in list
	::	if you want , change in list
	::
	::	Writed		: 22.09.2020 
	::	Version		: v1.4  
	::
	::	Designer 	: Mr1ay & MathInDOS
	::	Edited by 	: Mr1ay & MathInDOS
	::
	::	Verify   	: Yes (25.09.2020)
	::
	::		
	::		
	::		
	::		
	::		
	:: ----------------------		
	:: LOGO
	:: Logo is Copyright (C) Created by MathInDOS and Mr1ay
	
	:: -----------------------
	:: Start of LOGO Creation
	:: -----------------------

	@echo off
	mode 55,24
	set ve=1.4
	title A
	movewindow A 0 0 
	title CopyMenu Version-%ve% by Mr1ay ^& MathInDOS
	color f


	                          
	echo.                      . . _
	echo.                   .'   .- `             
	echo.                  :   .`               .
	echo.                 :    .            . . . . . 
	echo.                  :   .              . . .  Mathindos
	echo.                    .  `-._ Mr1ay   .     .        
	echo.                     ``--- `                
	echo.                                          
	echo.                                        
	echo.         _____                      .-------...__ 
	echo.    .--'     `-              .--..-'           "
	echo. .----.           `.._____ .'           
	echo.                         /       
	echo.                       .(             
	echo.                      : `--...        
	echo.                      `.     ``.     
	echo.                         :       :.           
	echo.                        .'         :   
	echo.                      .'           ,   
	echo.                    _.'           .    
	echo.                  ,:'            ,                
	echo.                 .'             ,                 
	echo.
	bg Locate 3 39  
	timeout /T 3 >nul   


	:: -----------------------
	:: End of LOGO Creation
	:: -----------------------
	@echo off
	mode 55,20
	set d1=0d
	set d2=0f
	set h=0
	set e1=
	set e2=

	set f=%cd%
	::call :u1


	:Menu
		cls
		call mbat	  3 1 1f 	"The Copier Menu"

		call mbat	  3 3 5f	"Location:"
		call mbat	 15 3 %d1%	"< Desktop >"
		call mbat	 27 3 %d2% 	" < Other > "
 
		call mbat	  3 5 4f	"Plugins :"
		call mbat	 14 5 0a	" + 7z.exe  "
		call mbat	 14 6 0c	" - rar.exe "
		call mbat 	 14 7 0a	" + batbox.exe "
		call mbat	 14 8 0c	" - bg.exe "
		call mbat 	 14 9 0a	" + clip.exe "
		call mbat	 14 10 0c	" - curl.exe"
		call mbat 	 14 11 0a	" + insertbmp.exe "
		call mbat	 14 12 0c	" - movewindow.exe "
		call mbat 	 14 13 0a	" + mouse.exe  "
		call mbat	 14 14 0c	" - nircmd.exe "
		call mbat 	 14 15 0a	" + paste.exe "
		call mbat	 14 17 0e	" - batboxmouse.bat "
		call mbat 	 14 18 0b	" + mbat.bat "

		call mbat	  3 17 3f	"Helper :"
 
		call mbat 46 1 3F "<v:%ve%>"
 
		batbox /c 0x00
		echo(
		bg Locate 0 0 
		call batboxmouse

			if %y% == 3 if %x% leq 10 		call :u0
			if %y% == 3 if %x% leq 25 if %x% geq 15 call :u1
			if %y% == 3 if %x% leq 37 if %x% geq 27 call :u2

			if %y% == 5  call :h
			if %y% == 6  call :make rar.exe
			if %y% == 7  call :make batbox.exe  
			if %y% == 8  call :make bg.exe 
			if %y% == 9  call :make clip.exe 
			if %y% == 10 call :make curl.exe 
			if %y% == 11 call :make insertbmp.exe 
			if %y% == 12 call :make movewindow.exe 
			if %y% == 13 call :make mouse.exe  
			if %y% == 14 call :make nircmd.exe 
			if %y% == 15 call :make paste.exe 
			if %y% == 17 call :make batboxmouse.bat
			if %y% == 18 call :make mbat.bat



			goto Menu
	

	:make
cd %f%
		set /p ff=<save_location.mr1ay
		cd..
		cd plugin

		copy %1 %ff%
	
		cd %f%
		goto :eof

	:h
		call :make 7z.dll
		call :make 7z.exe 
		goto :eof

	:u0
		call mbat  0 0 0e "%f%"
		set f=C:\Users\%username%\Desktop

		timeout /t 2
		call mbat 0 0 00 " %f%"
		goto :eof


	:u1
		set d1=0d
		set d2=0f
		cls
		::echo C:\Users\%username%\Desktop | clip
		::paste > save_location.mr1ay
		set /p ff=<save_location.mr1ay

		call mbat 0 0 0e "Selected Desktop "
		batbox /c 0x0b
		timeout /t 1
		goto :eof


	:u2
		set d1=0f
		set d2=0d
		cls
		call mbat 0 0 0e "Please copy the location " 
		call mbat 0 1 0e "This program will save the location you copied  "
		batbox /c 0x0b
		timeout /t 5
		paste > save_location.mr1ay
		set /p ff=<save_location.mr1ay
		goto :eof