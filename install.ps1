$dir = Split-Path -Parent $MyInvocation.MyCommand.Path


if (-not (Get-Command *git*)) { 
    winget install --id Git.Git -e --source winget 
}

if (-not (Get-Command *nvim*)) {
    winget install Neovim.Neovim
}

$nvimPath = Join-Path $HOME "AppData\Local\nvim"

if (-not (Test-Path -Path $nvimPath -PathType Container)) {
    git clone https://github.com/kimpure/nvim $nvimPath
}

& (Join-Path $dir "posh\install.ps1")
& (Join-Path $dir "toolkit\install.ps1")

