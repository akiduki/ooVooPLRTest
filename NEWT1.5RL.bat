@ECHO off
REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\Program Files\\Network Emulator for Windows Toolkit\\bin

echo "Random Loss 1% for 480 sec"
newtman /t 480 /e "Test" BW1.5Mbps_RL1.xml 1> BW1.5Mrl1.log

echo "Random Loss 3% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_RL3.xml 1> BW1.5Mrl3.log

echo "Random Loss 5% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_RL5.xml 1> BW1.5Mrl5.log

echo "Random Loss 10% for 450 sec"
newtman /e "Test" /f "Test" /t 450 BW1.5Mbps_RL10.xml 1> BW1.5Mrl10.log

echo "Random Loss 5% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_RL5.xml 1> BW1.5Mrl5down.log

echo "Random Loss 3% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_RL3.xml 1> BW1.5Mrl3down.log

echo "Random Loss 1% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_RL1.xml 1> BW1.5Mrl1down.log

newtman /f "Test"
echo "BINGO"