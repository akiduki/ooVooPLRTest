REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\Program Files\\Network Emulator for Windows Toolkit\\bin

newtman /t 480 /e "Test" BW1.5Mbps_BL1.xml 1> BW1.5Mbl1.log
echo "Burst Loss 1% for 480 sec"

newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_BL3.xml 1> BW1.5Mbl3.log
echo "Burst Loss 3% for 300 sec"

newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_BL5.xml 1> BW1.5Mbl5.log
echo "Burst Loss 5% for 300 sec"

newtman /e "Test" /f "Test" /t 450 BW1.5Mbps_BL10.xml 1> BW1.5Mbl10.log
echo "Burst Loss 10% for 450 sec"

newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_BL5.xml 1> BW1.5Mbl5down.log
echo "Burst Loss 5% for 300 sec"

newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_BL3.xml 1> BW1.5Mbl3down.log
echo "Burst Loss 3% for 300 sec"

newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_BL1.xml 1> BW1.5Mbl1down.log
echo "Burst Loss 1% for 300 sec"

newtman /f "Test"
echo "BINGO"