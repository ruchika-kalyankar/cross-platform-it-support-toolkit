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

if ($cpu -gt 80) {
    Write-Host "CPU Status: HIGH"
}
else {
    Write-Host "CPU Status: NORMAL"
}

Write-Host ""
Write-Host "Memory Usage:"

$memory = Get-CimInstance Win32_OperatingSystem

$totalMemory = $memory.TotalVisibleMemorySize
$freeMemory = $memory.FreePhysicalMemory
$usedMemory = $totalMemory - $freeMemory
$memoryUsage = ($usedMemory / $totalMemory) * 100
Write-Host "$memoryUsage%"
if ($memoryUsage -gt 80) {
    Write-Host "Memory Status: HIGH"
}
else {
    Write-Host "Memory Status: NORMAL"
}