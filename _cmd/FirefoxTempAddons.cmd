@echo off
ECHO firefox must be installed
ECHO Its path must be in PATH environment variable
REM SET fxName=firefox REM TODO: check IF EXIST FILE
SET fxName=firefoxPortable
%fxName% about:debugging#/runtime/this-firefox
%fxName% about:debugging
PAUSE
