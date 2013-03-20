@ECHO OFF
REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\oovoo project\\ffmpeg\\bin
del test.avi
ffmpeg.exe -t 3000 -f dshow -i video="UScreenCapture" -vcodec rawvideo -pix_fmt yuva420p test.avi