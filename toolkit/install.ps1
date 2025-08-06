# install nvm
if (-not (Get-Command *nvm*)) {
    winget install -e --id CoreyButler.NVMforWindows
}

# install phython
if (-not (Get-Command *python*)) { 
    winget install -e --id Python.Python.3.11
}

# install rokit
if (-not (Get-Command *rokit*)) {
    Invoke-RestMethod https://raw.githubusercontent.com/rojo-rbx/rokit/main/scripts/install.ps1 | Invoke-Expression
}


