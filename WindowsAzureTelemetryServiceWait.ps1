#wait for service without erroring please
((Get-Content -path C:\\DeprovisioningScript.ps1 -Raw) -replace 'Get-Service WindowsAzureTelemetryService','Get-Service WindowsAzureTelemetryService -ErrorAction:Ignore') | Set-Content -Path C:\\DeprovisioningScript.ps1


