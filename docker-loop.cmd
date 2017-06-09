@setlocal
@echo off

if defined SH_PATH (
  goto run
)

where sh.exe 1>"%TEMP%\where_sh" 2>nul
set /p SH_PATH= < "%TEMP%\where_sh"
del "%TEMP%\where_sh"
if defined SH_PATH (
  goto run
)

set SH_PATH=C:\Program Files\Git\bin\sh.exe
if exist "%SH_PATH%" (
  goto run
)

echo Unable to resolve location of sh.exe. 1>&2
exit /b 1

:run
"%SH_PATH%" "%~dp0docker-loop" %*
