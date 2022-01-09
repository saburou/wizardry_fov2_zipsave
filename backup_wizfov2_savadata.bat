@echo off
echo 5つの試練(steam版) 全セーブデータを圧縮します。
pause

powershell -NoProfile -ExecutionPolicy Unrestricted ".\backup_wizfov2_savadata.ps1;exit $LASTEXITCODE"

if %ERRORLEVEL% equ 1 (
 echo 失敗しました。
 pause
 exit
)
echo 完了しました。
pause