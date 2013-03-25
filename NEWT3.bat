REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\Program Files\\Network Emulator for Windows Toolkit\\bin

echo "Burst Loss 1% for 480 sec"
newtman /t 480 /e "Test" BW3Mbps_BL1.xml 2> BW3Mbl1.log

echo "Burst Loss 3% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW3Mbps_BL3.xml 2> BW3Mbl3.log

echo "Burst Loss 5% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW3Mbps_BL5.xml 2> BW3Mbl5.log

echo "Burst Loss 10% for 450 sec"
newtman /e "Test" /f "Test" /t 450 BW3Mbps_BL10.xml 2> BW3Mbl10.log

echo "Burst Loss 5% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW3Mbps_BL5.xml 2> BW3Mbl5down.log

echo "Burst Loss 3% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW3Mbps_BL3.xml 2> BW3Mbl3down.log

echo "Burst Loss 1% for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW3Mbps_BL1.xml 2> BW3Mbl1down.log

newtman /f "Test"
echo "BINGO"