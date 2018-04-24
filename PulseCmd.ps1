$Run = $true
Do{
$Option = Read-Host -Prompt 'Start or Kill?'

If ($Option -eq 'Start'){
Write-Host 'Starting Pulse Secure'
Start-Service -Name "Pulse Secure Service"
& 'C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\Pulse.exe'
Break
}
ElseIf ($Option -eq 'Kill'){
Write-Host 'Killing Pulse Secure'
Stop-Service -Name "Pulse Secure Service"
Stop-Process -Name "Pulse"
Break
}
ElseIf ($Option -eq 'Exit'){
Exit
}
Else{
Write-Host 'Invalid Option'}
}until($Run -eq $false)