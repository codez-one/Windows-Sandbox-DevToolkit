REM install Powershell Core
powershell.exe -command "& {Set-ExecutionPolicy -ExecutionPolicy Bypass -Force;. 'C:\users\WDAGUtilityAccount\Desktop\startup\install-pwsh.ps1' -Verbose;}"
REM install vscode
powershell.exe -command "& {Set-ExecutionPolicy -ExecutionPolicy Bypass -Force;. 'C:\users\WDAGUtilityAccount\Desktop\startup\install-vscode.ps1' -Verbose;}"