[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $ForceUpdate
)

function Get-CurrentVersion{
    # request magic url form the dotnet install script
    $versionInformation = Invoke-RestMethod -Uri "https://dotnetcli.blob.core.windows.net/dotnet/Sdk/LTS/latest.version";
    # version number is always the last line
    return (-split $versionInformation)[-1];    
}

$outPath = "$PSScriptRoot\..\downloads\dotnet.zip"

if($ForceUpdate.IsPresent){
    Remove-Item -Force $outPath;
}
if(Test-Path $outPath){
    return;
}
$SpecificVersion = Get-CurrentVersion;
# magic url from the dotnet install script
Invoke-WebRequest ("https://dotnetcli.azureedge.net/dotnet/Sdk/$SpecificVersion/dotnet-sdk-$SpecificVersion-win-x64.zip") -OutFile $outPath;