::HIDE ALL COMMANDS
@ECHO OFF
::Change the title displayed above the CMD window
title Apache, MySql auto srtart/stop

:MENU
::produce an empty line
ECHO:
ECHO ...............................................
ECHO PRESS 1 OR 2 to select your task, or 3 to EXIT.
ECHO ...............................................
ECHO:
ECHO 1. START service 
ECHO 2. STOP service 
ECHO 3. Exit
ECHO:

::SET /P variable=[promptString]
::Display, set, or remove CMD environment variables. Changes made with SET will remain only for the duration of the current CMD session.
               
	set /p num=Please enter a number...       
 
::EQU : Equal, GEQ : Greater than or equal >=

	IF %num% GEQ 4 cls & GOTO MENU
	IF %num% EQU 0 cls & GOTO MENU
	IF %num%==[] ECHO Value Missing
	IF %num% EQU 1 cls & GOTO START
	IF %num% EQU 2 cls & GOTO STOPA
	IF %num% EQU 3 cls & GOTO


	:START
	@net start Apache2.4
	@net start MySQL80
	ECHO YOU ARE READY TO GO, THE PROGRAM WILL EXIT NOW
	PAUSE
	EXIT

	:STOPA
	@net stop MySQL80
	@net stop Apache2.4
	ECHO ALL DONE, THE PROGRAM WILL EXIT NOW
	PAUSE
	EXIT