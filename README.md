# Windows-Sandbox-DevToolkit

This project helps to quickly setup a clean development environment. I personal use this for online training, so I only share the Windows Sandbox "Window".

## Get started

1. Clone the repo
2. Go in the folder `scenarios`
3. choose one scenario and go in its folder
4. open that folder in powershell
5. start the script that starts with `Start-Sandbox***`
   - for example for the PowerShell scenario do this: `PS scenarios\powershell> .\Start-SandboxPowerShell.ps1`
6. This will take a while for the first startup because it must download all dependencies
7. After the download the sandbox will start and install all required tools.
8. On the Desktop in the Sandbox you can find an folder `dev`. In this folder you can work. All your changes in that folder are save in `scenario/{name}/bin/dev`
9. If your are done with your work close the sandbox. Make sure you have save all your work to the folder `dev`.

## Development of the Toolkit

In the `src` folder are all shared scripts of the toolkit. In the scenarios folder are all scenarios. To add new scenarios copy the powershell scenario and change the scripts in it.
