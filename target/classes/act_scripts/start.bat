@echo off
setlocal & pushd
set APP_ENTRY=zomato.AppEntry
set BASE=%~dp0
set CP=%BASE%\classes;%BASE%\lib\*
title Running zomato2-1.0-SNAPSHOT powered by actframework-1.8.8-RC6
javaw -server -Xms256M -Xmx2G -XX:MaxPermSize=128M  -Dapp.mode=prod -Dprofile=%PROFILE% -cp "%CP%" %APP_ENTRY%
endlocal & popd
