# install.ps1
Write-Host "Downloading program..." -ForegroundColor Cyan

$downloadUrl = "https://github.com/6six-dev/syrex/releases/download/1.0.0/syrex.exe"
$tempPath = "$env:TEMP\syrex.exe"

try {
    # Download
    Invoke-WebRequest -Uri $downloadUrl -OutFile $tempPath -UseBasicParsing
    Write-Host "Download successful!" -ForegroundColor Green
    
    # Run
    Write-Host "Launching program..." -ForegroundColor Cyan
    Start-Process -FilePath $tempPath
    
} catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
}
