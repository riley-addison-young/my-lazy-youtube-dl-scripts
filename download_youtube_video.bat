@echo off

:begin_script
set /p video_url=Enter url for video download:
youtube-dl -f 299+140 %video_url% || goto download_137
echo Downloaded 1080p60 format.
goto end_of_script

:download_137
youtube-dl -f 137+140 %video_url% || goto download_136
echo Downloaded 1080p format.
goto end_of_script

:download_136 
youtube-dl -f 136+140 %video_url% || goto download_whatev
echo Downloaded 720p format.
goto end_of_script

:download_whatev
youtube-dl %video_url% || echo error, no format available
echo Downloaded whatever format was available.
goto end_of_script

:end_of_script
echo Script completed. Press any key to go back to step one, or close window to exit.

pause
cls
goto begin_script