@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 %computername% -n 1 ^| findstr "["') do (set thisip=%%a)
title iperf �y�q���� - Server �� IP:%thisip%
echo �z��Server IP: %thisip%
iperf -s
pause