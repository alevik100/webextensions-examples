
@echo off
REM Copy this script to source folder of Firefox's addon and run it.
ECHO 7-zip must be installed (see https://www.7-zip.org/).
ECHO Path of 7-zip must be in environment variable Path.
ECHO You may change the version number in manifest.json (to be continued after notepad closed)
PAUSE 
notepad manifest.json
set archpath=%CD%.build
set arch=%archpath%\arch
del  %arch%
7z a %arch%.zip *.* -r -x!%~nx0
IF EXIST %archpath% GOTO con
ECHO Creating of zip-file is failed
ECHO 7-zip must be installed (see https://www.7-zip.org/).
ECHO Add path of 7-zip must be in environment variable Path permanently.
GOTO end
:con
explorer %archpath%
COPY %arch%.zip %arch%.xpi
ECHO Creating of zip-file is completed
:end
PAUSE
