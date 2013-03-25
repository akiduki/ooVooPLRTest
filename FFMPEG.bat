@ECHO OFF
REM This batch is created to manipulate NEWT for ooVoo Project
REM Author: Fanyi Duanmu (Phoenix) from NYU-Poly
REM Last Update: 03/19/2013	Version: 2.0
REM For any concern, please contact Fanyi via dmfynyu@gmail.com

cd C:\\oovoo project\\ffmpeg\\bin
del capture.mp4
ffmpeg.exe -t 2400 -f dshow -i video="UScreenCapture" -r 25 -vcodec libx264 -tune zerolatency -b 4000k -pix_fmt yuv420p -rtbufsize 200MB captured.mp4 2> ffmpegCap.log
REM All done!