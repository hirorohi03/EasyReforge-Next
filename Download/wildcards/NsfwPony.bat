@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\Model\wildcards

@REM https://civitai.com/models/438104?modelVersionId=505027
call %CIVITAI_MODEL_UNZIP% .\ NsfwPony 438104 505027
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if exist NSFWPony1.1\ (
	echo ren NSFWPony1.1 NsfwPony
	ren NSFWPony1.1 NsfwPony
)

if exist "NsfwPony\char list1.txt" (
	echo ren "NsfwPony\char list1.txt" char.txt
	ren "NsfwPony\char list1.txt" char.txt
)

popd rem %~dp0..\..\..\Model\wildcards
