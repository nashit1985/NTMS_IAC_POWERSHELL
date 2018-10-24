<This is for the Task assigned by Dinesh Sir, on 23rd Oct 2018. Task Completed by Nashit Sekhani on 24th Oct 2018>
<"Task#1" This cmdlet is to find command which generate random number>
Get-command -noun random
<Output is Get-Random>
Get-Random
<"Task#2" This cmdlet is to find command which gets time>
Get-command -name *date*
<Output is Get-Date>
Get-Date
<"Task#3" Will run this command to find "Object Type" for Get-Date>
Get-Help Get-Date
<In description it says that "Get-Date" cmdlet gets "System.DateTime" object>
<"Task#4" Will run this command to find information about hotfixes installed on local system>
Get-Command -noun *Hotfix*
<Output suggests "Get-Hotfix">
Get-HotFix
<"Task#5" Will run this cmdlet to find what cmdlet is used for extracting event logs>
Get-Command -noun *event*
<Output suggests "Get-Eventlog">
<Will take further help to understand the syntax for this cmdlet, so as to extract only top 50 security log enteries> 
Get-help Get-EventLog -Examples
<One of the examples suggest this command, so I will go with this>
Get-EventLog -Newest 50 -LogName "Security"| out-file -FilePath "c:\IAC\Task5.txt"
<End of the Task>
