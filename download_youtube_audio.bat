@echo off

:begin_script
set /p video_url=Enter url for audio download:
youtube-dl --extract-audio --audio-quality 0 --audio-format mp3 %video_url% || goto failed_download
echo Downloaded audio.
goto end_of_script

:failed_download
echo Failed to download audio. Please check if your url is supported by youtube-dl.
goto end_of_script

:end_of_script
echo Script completed. Press any key to go back to step one, or close window to exit.

pause
cls
goto begin_script