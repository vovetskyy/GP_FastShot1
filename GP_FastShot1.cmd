echo off
rem 
rem 1st parameter -- name of the output file
rem 2nd parameter -- number of measurement loops (default value see in main.py)

set NORM_OUT="%1"
set NUM_LOOPS="%2"

set CUR_PATH=%cd%
set PC_NAME=%COMPUTERNAME%

if %NORM_OUT%=="" set NORM_OUT=%CUR_PATH%\RawOutput\%PC_NAME%_Test1.txt

%CUR_PATH%\GP_FastShot1.exe %NUM_LOOPs% >%NORM_OUT% 2>error.log