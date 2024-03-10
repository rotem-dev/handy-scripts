@echo off
setlocal enableextensions disabledelayedexpansion

set "rootDir=C:\BlikGit"

for /d /r "%rootDir%" %%d in (.vs) do (
    if exist "%%d" (
        echo Deleting: "%%d"
        rmdir /s /q "%%d"
    )
)

echo All .vs folders have been deleted.
pause
