@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 %computername% -n 1 ^| findstr "["') do (set thisip=%%a)
title iperf 流量測試 - Server 端 IP:%thisip%
echo 您的Server IP: %thisip%
iperf -s
pause