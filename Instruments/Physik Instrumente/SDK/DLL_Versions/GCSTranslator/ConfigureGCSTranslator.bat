@echo off

if %1!==! goto usage

set LOWLEVELDIGITAL=..\..\GCS_LabVIEW_digital\Low Level
set LOWLEVELANALOG=..\..\GCS_LabVIEW_analog\Low Level

:analog
if not exist "%LOWLEVELANALOG%\Version.txt" goto digital
if exist "%LOWLEVELANALOG%\GCSTranslator.dll" del /F "%LOWLEVELANALOG%\GCSTranslator.dll"
copy GCSTranslator_%1.dll "%LOWLEVELANALOG%\GCSTranslator.dll" /Y

:digital
if not exist "%LOWLEVELDIGITAL%\Version.txt" goto :eof
if exist "%LOWLEVELDIGITAL%\GCSTranslator.dll" del /F "%LOWLEVELDIGITAL%\GCSTranslator.dll"
copy GCSTranslator_%1.dll "%LOWLEVELDIGITAL%\GCSTranslator.dll" /Y

goto :eof

:usage
echo Call either 'ConfigureGCSTranslator x86' or 'ConfigureGCSTranslator x64'