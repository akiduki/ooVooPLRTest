REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\Program Files\\Network Emulator for Windows Toolkit\\bin

newtman /t 420 /e "Test" BW512kbps_BL20.xml
echo "Burst Loss 20% for 420 sec"

newtman /f "Test"
echo "BINGO"