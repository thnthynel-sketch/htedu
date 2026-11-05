# Cài add-in HTEdu cho Word và PowerPoint trên Windows (không cần quyền quản trị)
$dir = Join-Path $env:LOCALAPPDATA "HTEdu"; New-Item -ItemType Directory -Force -Path $dir | Out-Null
$m = Join-Path $dir "manifest.xml"
Invoke-WebRequest "https://thnthynel-sketch.github.io/htedu/manifest.xml" -OutFile $m -UseBasicParsing
$k = "HKCU:\Software\Microsoft\Office\16.0\WEF\Developer"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name "HTEdu" -Value $m -PropertyType String -Force | Out-Null
Write-Host "Da cai HTEdu. Dong han Word/PowerPoint roi mo lai: Insert > Add-ins > My Add-ins > HTEdu."
