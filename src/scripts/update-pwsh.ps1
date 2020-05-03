[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $ForceUpdate
)

function Get-PwshCurrentVersionDownloadUrl {
    $metaData = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/PowerShell/PowerShell/master/tools/metadata.json';
    return "https://github.com/PowerShell/PowerShell/releases/download/$($metaData.StableReleaseTag)/PowerShell-$($metaData.StableReleaseTag.Replace('v', ''))-win-x64.msi";    
}

$outPath = "$PSScriptRoot\..\downloads\pwsh.msi"

if($ForceUpdate.IsPresent){
    Remove-Item -Force $outPath;
}
if(Test-Path $outPath){
    return;
}
Invoke-WebRequest (Get-PwshCurrentVersionDownloadUrl) -OutFile $outPath;