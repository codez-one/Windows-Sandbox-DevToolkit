[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $ForceUpdate
)

$outPath = "$PSScriptRoot\..\downloads\vscode.exe"

if($ForceUpdate.IsPresent){
    Remove-Item -Force $outPath;
}
if(Test-Path $outPath){
    return;
}
Invoke-WebRequest "https://update.code.visualstudio.com/latest/win32-x64-user/stable" -OutFile $outPath

#C:\users\WDAGUtilityAccount\Desktop\vscode.exe /verysilent /suppressmsgboxes