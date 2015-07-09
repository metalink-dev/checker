call sample_setenv.bat
call setenv.bat

mkdir "%BUILDS%"

call sdist.bat
xcopy /Y "dist\metalink-checker-*.zip" "%BUILDS%\."
move "%BUILDS%\metalink-checker-*.zip" "%BUILDS%\%DATE%_Metalink_Checker.zip"
call py2exe.bat
xcopy /Y "metalink-checker-*-win32.zip" "%BUILDS%\."
move "%BUILDS%\metalink-checker-*-win32.zip" "%BUILDS%\%DATE%_Metalink_Checker-win32.zip"

REM SET PYTHONPATH=%PYTHONDIR%\python.exe
REM %PYTHONPATH% setup.py merge
REM xcopy /Y metalinkc.py "%BUILDS%\."
REM move "%BUILDS%\metalinkc.py" "%BUILDS%\%DATE%_metalinkc.py"
