REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\Program Files\\Network Emulator for Windows Toolkit\\bin

echo "No Loss for 512kbps BW for 480 sec"
newtman /t 480 /e "Test" BW512kbps_NoPL.xml 1> BW512kbps_NoPL.log

echo "No Loss for 1.5Mbps for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_NoPL.xml 1> BW1.5Mbps_NoPL.log

echo "No Loss for 3Mbps for 450 sec"
newtman /e "Test" /f "Test" /t 450 BW3Mbps_NoPL.xml 1> BW3Mbps_NoPL.log

echo "No Loss for 1.5Mbps for 300 sec"
newtman /e "Test" /f "Test" /t 300 BW1.5Mbps_NoPL.xml 1> BW1.5Mbps_NoPLDown.log

echo "No Loss for 512kbps BW for 300 sec"
newtman /t 300 /e "Test" BW512kbps_NoPL.xml 1> BW512kbps_NoPLDown.log

newtman /f "Test"
echo "BINGO"