# Windows System Information Collector
# Cross-Platform IT Support Diagnostic Toolkit

$computer = Get-ComputerInfo

Write-Host "========================================"
Write-Host " Windows System Information"
Write-Host "========================================"

Write-Host "Computer Name: $($computer.CsName)"
Write-Host "Operating System: $($computer.WindowsProductName)"
Write-Host "Windows Version: $($computer.WindowsVersion)"
Write-Host "Manufacturer: $($computer.CsManufacturer)"
Write-Host "Model: $($computer.CsModel)"

Write-Host ""
Write-Host "CPU Usage:"

$cpu = Get-CimInstance Win32_Processor | Select-Object -ExpandProperty LoadPercentage

Write-Host "$cpu%"