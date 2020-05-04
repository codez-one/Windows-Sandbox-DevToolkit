REM install dotnet
powershell.exe -command "& {Set-ExecutionPolicy -ExecutionPolicy Bypass -Force;. 'C:\users\WDAGUtilityAccount\Desktop\startup\install-dotnet.ps1' -Verbose;}"
REM install vscode
powershell.exe -command "& {Set-ExecutionPolicy -ExecutionPolicy Bypass -Force;. 'C:\users\WDAGUtilityAccount\Desktop\startup\install-vscode.ps1' -Verbose;}"