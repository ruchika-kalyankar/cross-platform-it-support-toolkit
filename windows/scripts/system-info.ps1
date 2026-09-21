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

Write-Host ""
Write-Host "Disk Usage:"

$disk = Get-PSDrive C

$totalDisk = $disk.Used + $disk.Free
$freeDiskPercentage = ($disk.Free / $totalDisk) * 100

Write-Host "Free Disk Space: $freeDiskPercentage%"

if ($freeDiskPercentage -lt 10) {
    Write-Host "Disk Status: CRITICAL"
}
elseif ($freeDiskPercentage -lt 20) {
    Write-Host "Disk Status: WARNING"
}
else {
    Write-Host "Disk Status: NORMAL"
}

Write-Host ""
Write-Host "Network Adapter:"

$adapter = Get-NetAdapter -Name "Wi-Fi"

Write-Host "Name: $($adapter.Name)"
Write-Host "Status: $($adapter.Status)"
if ($adapter.Status -eq "Up") {
    Write-Host "Adapter Status: NORMAL"
}
else {
    Write-Host "Adapter Status: CHECK"
}


Write-Host ""
Write-Host "IP Configuration:"

$ipConfig = Get-NetIPConfiguration -InterfaceAlias "Wi-Fi"

Write-Host "IPv4 Address: $($ipConfig.IPv4Address.IPAddress)"

Write-Host ""
Write-Host "Default Gateway:"

Write-Host "Gateway: $($ipConfig.IPv4DefaultGateway.NextHop)"

Write-Host ""
Write-Host "Gateway Connectivity:"

$gateway = $ipConfig.IPv4DefaultGateway.NextHop

$gatewayTest = Test-Connection -ComputerName $gateway -Count 1 -Quiet

if ($gatewayTest) {
    Write-Host "Gateway Status: REACHABLE"
}
else {
    Write-Host "Gateway Status: UNREACHABLE"
}

Write-Host ""
Write-Host "Internet Connectivity:"

$internetTest = Test-Connection -ComputerName "8.8.8.8" -Count 1 -Quiet

if ($internetTest) {
    Write-Host "Internet Status: CONNECTED"
}
else {
    Write-Host "Internet Status: UNREACHABLE"
}

Write-Host ""
Write-Host "DNS Resolution:"

$dnsTest = Resolve-DnsName "github.com" -ErrorAction SilentlyContinue

if ($dnsTest) {
    Write-Host "DNS Status: PASS"
}
else {
    Write-Host "DNS Status: FAIL"
}

Write-Host ""
Write-Host "Network Health Summary:"

if ($adapter.Status -eq "Up" -and $gatewayTest -and $internetTest -and $dnsTest) {
    Write-Host "Network Status: NORMAL"
}
else {
    Write-Host "Network Status: CHECK"
}