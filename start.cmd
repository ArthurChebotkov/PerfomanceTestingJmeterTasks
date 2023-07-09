@echo off
:: Set datetime format for timestamp
set mydate=%date:/=_%
set mytime=%time::=_%
set mytime=%mytime:,=%
set mytime=%mytime:.=%
set _timestamp=%mydate: =_%_%mytime%

:: Create folder with timestamp
mkdir results\%_timestamp%\report

:: Run jmeter tests
jmeter -n -t Slotegrator_Test_Task.jmx -l results/%_timestamp%/summary.csv -e -o results/%_timestamp%/report