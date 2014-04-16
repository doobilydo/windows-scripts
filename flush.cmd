@echo off
::**
:: Flush the DNS
::**

REM Run this every 15 minutes

::set /a x=0

:flush
REM Debug
::echo Loop number: -^> %x%
::set /a x=%x%+1

echo Flushing DNS...
ipconfig /flushdns
REM Time in seconds 900s = 15m
TIMEOUT /t 900
::if %x% NEQ 10 goto flush
goto flush
