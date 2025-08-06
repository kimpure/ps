# install oh my posh 
# https://github.com/jandedobbeleer/oh-my-posh

# import lib.ps1
. (Join-Path (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)) "lib.ps1")

if (-not (Get-Command *oh-my-posh*)) {
    winget install JanDeDobbeleer.OhMyPosh --source winget --scope user --force
}

# setup posh profile.ps1
if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force

    Add-Content -Path $PROFILE -Value (Get-Relative-Content "posh\profile.ps1")
}

