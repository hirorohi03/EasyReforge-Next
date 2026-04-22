@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\VAE

@REM https://civitai.com/models/152040?modelVersionId=719135
call %CIVITAI_MODEL% Sdxl\ XlVaeC_f2.safetensors 152040 719135
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\VAE
