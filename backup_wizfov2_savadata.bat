@echo off
echo 5�̎���(steam��) �S�Z�[�u�f�[�^�����k���܂��B
pause

powershell -NoProfile -ExecutionPolicy Unrestricted ".\backup_wizfov2_savadata.ps1;exit $LASTEXITCODE"

if %ERRORLEVEL% equ 1 (
 echo ���s���܂����B
 pause
 exit
)
echo �������܂����B
pause