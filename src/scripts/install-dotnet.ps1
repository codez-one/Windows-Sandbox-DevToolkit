$zipPath = "C:\users\WDAGUtilityAccount\Desktop\Downloads\dotnet.zip"


$sharePath = "$env:LocalAppData\Microsoft\dotnet";
mkdir $sharePath -Force;
Expand-Archive -Path $zipPath -DestinationPath $sharePath;
# for the user
[System.Collections.ArrayList]$currentPath = ([System.Environment]::GetEnvironmentVariable('PATH',[System.EnvironmentVariableTarget]::User)).Split(';');
$currentPath.Add($sharePath);
[System.Environment]::SetEnvironmentVariable('PATH', ($currentPath -join ';'),[System.EnvironmentVariableTarget]::User);
#for the current process
[System.Collections.ArrayList]$currentPath = ([System.Environment]::GetEnvironmentVariable('PATH',[System.EnvironmentVariableTarget]::Process)).Split(';');
$currentPath.Add($sharePath);
[System.Environment]::SetEnvironmentVariable('PATH', ($currentPath -join ';'),[System.EnvironmentVariableTarget]::Process);
