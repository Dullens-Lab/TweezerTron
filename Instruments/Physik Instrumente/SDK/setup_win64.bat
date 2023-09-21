@echo off

echo Running GCSLibrarySetup...
cd DLL_Versions\
GCSLibrarySetup.exe
cd ..
echo.

echo Configuring GCSTranslator.dll...
cd DLL_Versions\GCSTranslator\
call ConfigureGCSTranslator.bat win64
cd ..\..
echo.

echo Finished.
pause