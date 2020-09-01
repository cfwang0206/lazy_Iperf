# lazy_Iperf
Script BY cfwang 2015/12/02 

lazy batch script , call iperf test server 、 client bandwidth.

and colud change define at clinet script : [ 啟動Client測試.BAT ] :P

# Two Scripts : server/client  bat :

1. [啟動server.bat ] - Run at server ; or can Cisco router iperf func.

2.[ 啟動Client測試.BAT ] - Run  it  clinet , user can tpye ip ; if not type any thing use default ip : 192.168.1.2


cfwang
20200901

-------
[中文 Chinese]

又整理出一個一個偷懶的script ,  之前測速專案需求用偷懶做的1

Script BY cfwang 2015/12/02 
允許使用者自訂IP 進行流量測試
記得 Server 端要先執行 [啟動server.bat] !

1. 有分成 [啟動server.bat]  在 server 端，也可以是cisco router .

2. [啟動Client測試.BAT ] ， 使用者可以自己輸入ip，預設值是帶 192.168.1.2 ，也可以修改成您需要的在 [啟動Client測試.BAT] ，
這樣子使用者就不用特別改了。

#定義區如下

# REM 變數定義區 START
REM 定義 Windows Size 大小，預設是 64K
set WindowsSize=1024k
# REM 定義測試時間 ， 預設 120 秒
set TestTime=120
# REM 定義多久輸出一次紀錄， 預設 5 秒
set TestInterval=5
# REM 定義輸出檔名
set LogFileName=iperf-log.txt
# REM 額外自訂參數
set CustomCommand=-u -b 2048000000
# REM 設定 Default IP
set DefaultIP=192.168.1.2

# REM 變數定義區 END
