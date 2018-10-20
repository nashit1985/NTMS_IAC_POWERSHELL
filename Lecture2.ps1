$service=Get-service |select -Property Name, Status
$filename=Get-Date -UFormat %y-%m-%d-%M
