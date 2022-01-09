
$processDate=Get-Date -Format "yyyyMMddHHmmss"
$saveDataPath=Join-Path $env:USERPROFILE AppData\LocalLow\59Studio\WizardryFoV2\savedata
$outputPath=Join-Path $env:USERPROFILE Documents\59studio\savedata$processDate.zip
$zipLevel="Fastest"

echo "�Z�[�u�f�[�^: $saveDataPath"
echo "�o�͐�: $outputPath"

if(Test-Path $saveDataPath) {
    Compress-Archive -Path $saveDataPath -DestinationPath $outputPath -CompressionLevel $zipLevel
    return 0
}
return 1

