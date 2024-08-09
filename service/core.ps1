function manageService($serviceList, $startuptype) {
    Set-Variable -Name REG_PATH -Value 'HKLM:\SYSTEM\CurrentControlSet\Services\' -Option Constant
    $nameMap = @{
        '0' = 'Boot'
        '1' = 'System'
        '2' = 'Automatic'
        '3' = 'Manual'
        '4' = 'Disabled' 
    }
    foreach ($service in $serviceList) {
        Write-Host $service ' => ' $nameMap[$startuptype]
        $path = $REG_PATH + $service
        Set-ItemProperty -Path $path -Name 'Start' -Value $startuptype
    }
}