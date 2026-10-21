$url = "https://github.com/Athossilva1/Reparador/raw/refs/heads/main/reparador.exe"
$destino = "$env:LOCALAPPDATA\reparador.exe"

curl.exe -fL --retry 3 "$url" -o "$destino"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Reparo concluido!"
    Start-Process $destino
} else {
    Write-Host "Falha no reparo."
}