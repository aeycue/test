#install apps

#region Set logging 
if (-not(test-path "c:\Source\ImageBuilder\")){mkdir "c:\Source\ImageBuilder\"}
$logFile = "c:\Source\ImageBuilder\" + (get-date -format 'yyyyMMdd') + '_softwareinstall.log'
function Write-Log {
    Param($message)
    Write-Output "$(get-date -format 'yyyyMMdd HH:mm:ss') $message" | Out-File -Encoding utf8 $logFile -Append
    Write-Host "$(get-date -format 'yyyyMMdd HH:mm:ss') $message"
}
#endregion

#region crowdstrike
$appname = "CrowdStrike"
Write-Log "$($appname)
try {
    & "C:\Source\CrowdStrike_FalconPrevent_6.38.15205.0\Deploy\install.ps1"
    if (Test-Path "C:\Program Files\Crowdstrike\CSFalconContainer.exe") {
        Write-Log "$($appname) has been installed"
    }
    else {
        write-log "Error locating the $($appname) executable"
    }
}
catch {
    $ErrorMessage = $_.Exception.message
    write-log "Error installing $($appname): $ErrorMessage"
}
#endregion


#region ForcePoint
$appname = "ForcePoint"
Write-Log "$($appname)
try {
    & "C:\Source\Forcepoint_DLP_22.12.5622\Deploy\Install_ForcePoint_DLP.ps1"
    if (Test-Path "c:\Program Files\Websense\Websense Endpoint\EndPointClassifier.exe") {
        Write-Log "$($appname) has been installed"
    }
    else {
        write-log "Error locating the $($appname) executable"
    }
}
catch {
    $ErrorMessage = $_.Exception.message
    write-log "Error installing $($appname): $ErrorMessage"
}
#endregion
exit 0
