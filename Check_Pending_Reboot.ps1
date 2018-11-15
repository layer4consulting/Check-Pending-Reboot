#$Computers = Get-ADComputer -Filter { OperatingSystem -Like '*Windows Server*' } -Properties OperatingSystem | select -ExpandProperty Name
$Computers = Get-Content .\Servers.txt
Test-PendingReboot -ComputerName $Computers -SkipConfigurationManagerClientCheck