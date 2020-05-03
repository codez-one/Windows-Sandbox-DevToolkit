mkdir "C:\Temp\" -Force;
Copy-Item "C:\users\WDAGUtilityAccount\Desktop\Downloads\pwsh.msi" "C:\Temp\" -Force;
Start-Process "msiexec.exe" -ArgumentList "/package C:\Temp\pwsh.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1" -Wait;
Write-Verbose "PowerShell Core installed";