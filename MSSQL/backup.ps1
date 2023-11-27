
$srvs = Get-Content -Path B:\GIOS\DBA\Monitor\config\2195.txt

Get-DbaDatabase -SqlInstance $srvs -IncludeLastUsed | Select-Object SqlInstance,Name,RecoveryModel,LogReuseWaitStatus,
@{Name="SizeGB";Expression={[math]::Round($_.SizeMB*1MB/1GB,3) }},
Owner,LastFullBackup,LastLogBackup,LastDiffBackup,LastReindexRead,LastReindexWrite | Out-GridView


Get-DbaDbSpace -SqlInstance $srvs | Sort-Object PercentUsed  -Descending | Out-GridView 


$srvs = Get-Content -Path B:\GIOS\DBA\Monitor\config\2197.txt

Get-DbaDatabase -SqlInstance $srvs -IncludeLastUsed | Select-Object SqlInstance,Name,RecoveryModel,LogReuseWaitStatus,
@{Name="SizeGB";Expression={[math]::Round($_.SizeMB*1MB/1GB,3) }},
Owner,LastFullBackup,LastLogBackup,LastDiffBackup,LastReindexRead,LastReindexWrite | Out-GridView


Get-DbaDbSpace -SqlInstance $srvs | Sort-Object PercentUsed  -Descending | Out-GridView 



$srvs = Get-Content -Path B:\GIOS\DBA\Monitor\config\2198.txt

Get-DbaDatabase -SqlInstance $srvs -IncludeLastUsed | Select-Object SqlInstance,Name,RecoveryModel,LogReuseWaitStatus,
@{Name="SizeGB";Expression={[math]::Round($_.SizeMB*1MB/1GB,3) }},
Owner,LastFullBackup,LastDiffBackup,LastLogBackup,LastReindexRead,LastReindexWrite | Out-GridView


Get-DbaDbSpace -SqlInstance $srvs | Sort-Object PercentUsed  -Descending | Out-GridView 