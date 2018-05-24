@ECHO ON  

::   ################################################################################
::   ##
::   ##                     SendEmail.bat  VERSION 1.0  	  
::   ##                  ------------------------------------
::   ##  
::   ##  This script copies an email file to the SMTP pickup folder based on email status vairable
::   ##  
::   ##  Script location: C:\JDA\scripts
::   ##
::   ##  *Modified:
::   ##  ----------
::   ##  * JB 04/03/2018 -- Initial creation 
::   ################################################################################

Set EMAILSTATUS=Success
goto %EMAILSTATUS%

:Start
xcopy /y C:\JDA\scripts\RestartJDAEmailStart.txt C:\inetpub\mailroot\Pickup\RestartJDAEmailStart.txt*
goto FINISH

:Success
xcopy /y C:\JDA\scripts\RestartJDAEmailSuccess.txt C:\inetpub\mailroot\Pickup\RestartJDAEmailSuccess.txt*
goto FINISH

:Error
xcopy /y C:\JDA\scripts\RestartJDAEmailError.txt C:\inetpub\mailroot\Pickup\RestartJDAEmailError.txt*
goto FINISH

:Test
xcopy /y C:\JDA\scripts\RestartJDAEmailError.txt C:\inetpub\mailroot\Pickup\RestartJDAEmailError.txt*
goto FINISH
::EDITIING THE FILE
:FINISH
EXIT /B 
