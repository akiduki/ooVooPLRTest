REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

echo off

start cmd.exe /c NEWT512_20.bat
ping 11.11.1.1 -n 1 -w 60000 > nul 
REM Here we delay 90 sec before triggering Screen Capture
start cmd.exe /c FFMPEG.bat
