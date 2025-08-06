function Get-Current-Dir {
    $path = $MyInvocation.MyCommand.Path
    if (-not $path) {
        return Get-Location    
    }
    return Split-Path -Parent $path
}

function Get-Relative-Content {
    param($path)
    return Get-Content -Path (Join-Path (Get-Current-Dir) $path) -Raw
}

