$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
& (Join-Path $dir "posh\install.ps1")
& (Join-Path $dir "toolkit\install.ps1")

