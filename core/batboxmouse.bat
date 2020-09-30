::Edited by Mr1ay
::TheBateam Member
::
::Batbox Mouse Command
::You can use batbox mouse command
::
::Syntax
::call batboxmouse 
::
::Usage: 
::call batboxmouse 

for /f "delims=: tokens=1,2,3" %%A in ('batbox /m') do (
set x=%%A
set y=%%B
set z=%%C
)
goto :eof
