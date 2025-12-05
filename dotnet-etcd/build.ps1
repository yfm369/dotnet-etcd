# build-and-pack.ps1
Write-Host "clean project..." -ForegroundColor Yellow
dotnet clean

Write-Host "compile Release version..." -ForegroundColor Yellow
dotnet build -c Release

if ($LASTEXITCODE -eq 0) {
    Write-Host "biuld succece now packing..." -ForegroundColor Green
    dotnet pack -c Release --output ./nupkgs
    Write-Host "completed！" -ForegroundColor Green
} else {
    Write-Host "failed" -ForegroundColor Red
}