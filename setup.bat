@echo off
setlocal
echo ===================================================
echo   INICIANDO CONFIGURACION DEL ENTORNO DE AGENTES
echo ===================================================
echo.

echo [1/5] Configurando politica de ejecucion de PowerShell...
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
if %errorlevel% neq 0 (
    echo Error: No se pudo configurar la politica de ejecucion.
    pause
    exit /b %errorlevel%
)

echo [2/5] Instalando dependencia global: agent-browser...
call npm install -g agent-browser
if %errorlevel% neq 0 (
    echo Error: Fallo la instalacion de agent-browser.
    pause
    exit /b %errorlevel%
)

echo [3/5] Descargando binarios internos del navegador...
call agent-browser install
if %errorlevel% neq 0 (
    echo Error: Fallo la descarga de los binarios del navegador.
    pause
    exit /b %errorlevel%
)

echo [4/5] Activando Git Hooks personalizados (.githooks)...
call git config core.hooksPath .githooks
if %errorlevel% neq 0 (
    echo Error: No se pudo configurar la ruta de Git Hooks. 
    echo Asegurate de que el proyecto ya tiene 'git init' hecho.
    pause
    exit /b %errorlevel%
)

echo [5/5] Instalando RTK (Rust Token Killer) desde GitHub...
where rtk >nul 2>nul
if %errorlevel% neq 0 (
    powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://github.com/rtk-ai/rtk/releases/latest/download/rtk-x86_64-pc-windows-msvc.zip' -OutFile 'rtk.zip'; Expand-Archive -Path 'rtk.zip' -DestinationPath '.'; Remove-Item 'rtk.zip'"
    if %errorlevel% neq 0 (
        echo Error: Fallo la descarga de RTK desde GitHub.
        pause
        exit /b %errorlevel%
    )
)

echo Inicializando base de datos de ahorro...
call ./rtk.exe init
if %errorlevel% neq 0 (
    echo Aviso: RTK se descargo pero no se pudo inicializar.
)

echo.
echo ===================================================
echo   DESPLIEGUE COMPLETADO CON EXITO
echo ===================================================
echo El entorno esta listo.
pause