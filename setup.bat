@echo off
setlocal
echo ===================================================
echo   INICIANDO CONFIGURACION DEL ENTORNO DE AGENTES
echo ===================================================
echo.

echo [1/4] Configurando politica de ejecucion de PowerShell...
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
if %errorlevel% neq 0 (
    echo Error: No se pudo configurar la politica de ejecucion.
    pause
    exit /b %errorlevel%
)

echo [2/4] Instalando dependencia global: agent-browser...
call npm install -g agent-browser
if %errorlevel% neq 0 (
    echo Error: Fallo la instalacion de agent-browser.
    pause
    exit /b %errorlevel%
)

echo [3/4] Descargando binarios internos del navegador...
call agent-browser install
if %errorlevel% neq 0 (
    echo Error: Fallo la descarga de los binarios del navegador.
    pause
    exit /b %errorlevel%
)

echo [4/4] Activando Git Hooks personalizados (.githooks)...
call git config core.hooksPath .githooks
if %errorlevel% neq 0 (
    echo Error: No se pudo configurar la ruta de Git Hooks. 
    echo Asegurate de que el proyecto ya tiene 'git init' hecho.
    pause
    exit /b %errorlevel%
)

echo.
echo ===================================================
echo   DESPLIEGUE COMPLETADO CON EXITO
echo ===================================================
echo El entorno esta listo.
pause