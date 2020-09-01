@echo off
REM Script BY cfwang 2015/12/02 
REM 允許使用者自訂IP 進行流量測試
REM 記得 Server 端要先執行 [啟動server.bat] !

REM 變數定義區 START
REM 定義 Windows Size 大小，預設是 64K
set WindowsSize=1024k
REM 定義測試時間 ， 預設 120 秒
set TestTime=120
REM 定義多久輸出一次紀錄， 預設 5 秒
set TestInterval=5
REM 定義輸出檔名
set LogFileName=iperf-log.txt
REM 額外自訂參數
set CustomCommand=-u -b 2048000000
REM 設定 Default IP
set DefaultIP=192.168.1.2

REM 變數定義區 END

title iperf 流量測試 - 用戶端
echo 請輸入測試 Iperf Server 端 IP EX: %DefaultIP%
set /p UserInputIP="->"

REM 使用者輸入 IP 區域，若沒輸入則使用預設 IP %DefaultIP%
if /I [%UserInputIP%] == [] (
cls
echo [錯誤:沒有輸入IP]
echo 將使用預設IP %DefaultIP% 進行測試傳輸 測試 %TestTime% 秒
iperf -c %DefaultIP% -w %WindowsSize% -t %TestTime% -i %TestInterval% -o %LogFileName% %CustomCommand%
pause 
REM 如果有輸入 IP 則帶入IP 測試
) else (
echo 將與 Server %UserInputIP% 進行測試傳輸 測試 %TestTime% 秒
iperf -c %UserInputIP% -t %TestTime% -i %TestInterval% -o %LogFileName% %CustomCommand%
pause 
)