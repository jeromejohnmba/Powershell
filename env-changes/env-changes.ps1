#env changes script

$prompt = Read-Host -prompt "What is the environmental variable?"
Write-Host $prompt

#view all variables

Get-ChildItem Env:\TEMP
Get-ChildItem Env:\Path
Get-ChildItem Env:Username
Get-ChildItem Env:\COMPUTERNAME

