# lazy_Iperf


Lazy batch script , use Iperf[1] test bandwidth.

This Lazyscripts could help you , define your options at **clinet side batch file**   , just setting & test done , 

then give your user or consumer :) 

---

It an old script , wrote at 2015/12/02.

I hope to share with you.

cfwang
20200901

# Screenshot - DEMO #
![Lazy iPerf script demo](https://github.com/cfwang0206/lazy_Iperf/blob/master/%5BSample%20%5Diperf_lazy.png) 


# Server/Client  Batch File :

1. [啟動server.bat ] - Run at server ; 

2.[ 啟動Client測試.BAT ] - Run  it  clinet , user can tpye ip  ; if not  will use default ip : 192.168.1.2  *(Could modify client.bat define area ) *



**REF:**

[1]iPerf - The ultimate speed test tool for TCP, UDP and SCTP Test the limits of your network + Internet neutrality test,https://iperf.fr/

[2]iPerf documentation,https://iperf.fr/iperf-doc.php

-------

[中文 Chinese]

這個測速的批次檔是在2015/12/02 寫的小工具 ,  透過 iPerf[1] 來達成，測速需求用 ( 設定跟/測試就好 )

這個批次擋我覺得我自己用起來滿方便的，因此希望能夠能跟大家分享。

cfwang 20200901

----------
#介紹:
本批次擋的好處是，可以讓使用者執行 clinet.bat ，使用者 ( User ) 可以自己打IP 或是直接按 Enter，執行管理者定義好在批次檔裡頭的預設 IP ，進行測試。

記得 Server 端要先執行 [啟動server.bat] 喔!

#  批次擋( Batch file) 分成 Server / Client 用戶端 : 

1. 伺服器端 (Server) :[啟動server.bat]  在 server 端執行 ；如果是支援 iPerf 的路由器就不用執行這隻批次擋.

2. 用戶端 (Client): [啟動Client測試.BAT ] : 使用者可以自己輸入ip，預設值是定義 '192.168.1.2' ;

並且可以修改成您需要的在參數[2] 在[啟動Client測試.BAT] **定義區*** 裏頭，

然後給您的用戶或是客戶，這樣子使用者就不用特別改囉。

***#定義區如下***:

```Batchfile
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
```

REF:
[1]iPerf - The ultimate speed test tool for TCP, UDP and SCTP Test the limits of your network + Internet neutrality test,https://iperf.fr/

[2]iPerf documentation,https://iperf.fr/iperf-doc.php
