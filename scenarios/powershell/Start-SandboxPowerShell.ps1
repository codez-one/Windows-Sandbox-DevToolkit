[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $ForceUpdate
)

# make shure all folders exsists
mkdir "./bin" -Force;
mkdir "./bin/downloads" -Force;
mkdir "./bin/startup" -Force;
mkdir "./bin/scripts" -Force;
mkdir "./bin/dev" -Force;


Copy-Item ..\..\src\scripts\install-vscode.ps1 ./bin\startup\install-vscode.ps1
Copy-Item ..\..\src\scripts\install-pwsh.ps1 ./bin\startup\install-pwsh.ps1
Copy-Item ..\..\src\scripts\update-pwsh.ps1 ./bin\scripts\update-pwsh.ps1
Copy-Item ..\..\src\scripts\update-vscode.ps1 ./bin\scripts\update-vscode.ps1
Copy-Item ./startup.cmd ./bin\startup\startup.cmd

# update all dependencies
./bin/scripts/update-pwsh.ps1 @PSBoundParameters;
./bin/scripts/update-vscode.ps1 @PSBoundParameters;


# rewrite the paths in the sandbox.wsb
$wsbXML = Get-Content ./sandbox.wsb -Raw;
$wsbXML = $wsbXML.Replace('$(currentPath)', "$($PWD.Path)\bin");
$wsbXML > ./bin/sandbox.wsb;

# start sandbox
./bin/sandbox.wsb;
