@echo off

set logFile=CleanLogsLog.txt
set logsFolder=C:\logging\logs

echo ---------- START -------------- >> %logFile%
date /t >> %logFile%
time /t >> %logFile%

echo - >> %logFile%

echo Files count before delete: >> %logFile%
dir /a:-d /s /b %logsFolder% | find /c ":" >> %logFile%


echo - >> %logFile%
echo Deleting started... >> %logFile%

ForFiles /p %logsFolder% /s /d -365 /c "cmd /c del /Q @file"

echo - >> %logFile%
echo Done deleting. >> %logFile%

date /t >> %logFile%
time /t >> %logFile%

echo - >> %logFile%

echo Files count after delete: >> %logFile%
dir /a:-d /s /b %logsFolder% | find /c ":" >> %logFile%

echo ----------  END  -------------- >> %logFile%
