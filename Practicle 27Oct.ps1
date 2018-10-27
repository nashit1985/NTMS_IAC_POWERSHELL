Write-host "This is test string"
Write-host -ForegroundColor Yellow -backgroundcolor Black "this is test"
Write-host |GM
Get-help write-host
Write-Output "This is test" | Gm
Get-help read-host -Examples
$Q="Your name is"
$Name=read-host
Write-host "Your name is $Name"
$name=Read-Host
Get-help Write-host -Examples
Get-help Read-host -Examples
$FName= Read-Host "Please enter your First Name"
$LName= Read-host "Please enter your Last Name"
Write-Host "$Fname $Lname"
$firstname = Read-host -Prompt "Please Enter Your First Name"
$Lastname = Read-host -Prompt "Please Enter Your Last Name"
Write-Host  Your name is  "$Firstname $Lastname"
$firstnumber= Read-Host -Prompt "Please provide first number"
$secondnumber= Read-Host -Prompt "Please provide second number"
Write-host Your total is $firstnumber+$secondnumber
Get-help write-host -Examples
$firstnumber -gm
[int]$firstnumber= Read-Host -Prompt "Please provide first number"
[int]$secondnumber= Read-Host -Prompt "Please provide second number"
Write-host "Your total is" $($firstnumber+$secondnumber)
[int]$firstnumber= Read-Host -Prompt "Please provide first number"
[int]$secondnumber= Read-Host -Prompt "Please provide second number"
$addition=$firstnumber+$secondnumber
Write-host "Your total is" $addition
Array is collection of object
Defined by [] example $string[], int[]

Array is defined as $var=@()
exp $var=@(1,2,"nashit")

$myvar=@(1,2,"ntms",7,9,99)
$myvar | Get-Member
$myvar.Count
$myvar[-1]
$myvar[5]
$myvar +=77
$myvar.Clear(3)
$myvar.Length
$myvar.Remove(4)
Get-Member -input $myvar
Hash Table is collection of pair (key=Value)
To define hashtable use $var=@{} curly bracket is difference between array and hash table. Also use  semi colon instead of coma
$hashtable = @{Name="Nashit";Lastname="Sekhani"}
$hashtable
$hashtable["Name"]
$hashtable.ContainsValue("Nashit")
$hashtable.Contains("Nashit")
$hashtable.keys
Pipeline give object one by one
Get-Service | Select  name, displayname
Get-Service | Stop-Process
Get-Help stop-process -ShowWindow
Get-Process | Get-member
Get-Service | Where-Object {$_.name -contains "bits"}
Get-Service | Where-Object {$_.name -contains "bits"}
Get-Process | where-object {$_.Id -gt 5000}
Get-ChildItem C:\windows -Directory
Get-item c:\windows | Get-Member |out-file C:\IAC\FolderProperty.txt
Get-Childitem c:\windows |where-object {$_.PSisContainer -eq $True}
Get-service | Get-Process
Get-ChildItem | Select size,mode | Get-Process
Get-ChildItem | Select length,lastcreatedtime | Get-Process

Get-ChildItem c:\windows | select Mode, @{l="Id"; e={$_.Length}} | Get-Process
Get-Help Get-Service -ComputerName 
Get-Service | Select displayname | Get-Service
Get-Service | select name | Out-file c:\IAC\name.txt
ii C:\iac\Displayname.txt
Get-Service -DisplayName (Get-Content C:\iac\name.txt) 