@echo off
REM post-push hook for Windows
REM Accumulates changes for context-updater to process

setlocal enabledelayedexpansion

set z40=0000000000000000000000000000000000000000
set PENDING_FILE=context\pending-updates.md

REM Create context folder if needed
if not exist context mkdir context

REM Get parameters
set remote=%1
set url=%2

REM Process each ref
git for-each-ref --format="%(refname) %(objectname) %(push:track)" | findstr /C:"refs/heads/" >nul 2>&1
if errorlevel 1 goto :eof

for /f "tokens=1,2" %%a in ('git for-each-ref --format="^(refname) ^(objectname)" refs/heads/') do (
    set local_ref=%%a
    set local_sha=%%b
    call :process_ref
)

goto :end

:process_ref
if "%local_sha%"=="%z40%" goto :eof

REM Get timestamp
for /f "tokens=1,2 delims=/ " %%a in ('date /t') do set date_var=%%a
for /f "tokens=1 delims=. " %%a in ('time /t') do set time_var=%%a
set timestamp=%date_var% %time_var%

REM Get changed files - simplified (just show files in last commit)
git diff --name-only HEAD~1..HEAD > "%TEMP%\changed_files.txt" 2>nul
set /p changed_files=<"%TEMP%\changed_files.txt"

REM If pending file doesn't exist, create header
if not exist "%PENDING_FILE%" (
    echo # Pending Context Updates > "%PENDING_FILE%"
    echo. >> "%PENDING_FILE%"
    echo _Note: Managed by git hooks. Run 'opencode' to process._ >> "%PENDING_FILE%"
    echo. >> "%PENDING_FILE%"
)

REM Append changes
echo ## Push [%timestamp%] >> "%PENDING_FILE%"
echo **Status:** pending_agent_review >> "%PENDING_FILE%"
echo **Changed files:** >> "%PENDING_FILE%"
if defined changed_files (
    type "%TEMP%\changed_files.txt" >> "%PENDING_FILE%"
) else (
    echo - (no files) >> "%PENDING_FILE%"
)
echo. >> "%PENDING_FILE%"
echo --- >> "%PENDING_FILE%"
echo. >> "%PENDING_FILE%"

echo Context changes tracked in %PENDING_FILE%
echo Run 'opencode' and ask to update context files when ready.

:end