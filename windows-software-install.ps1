# ========================
#     sellingwin Installer
# ========================

Clear-Host "================================" -ForegroundColor Cyan
Write-Host "        sellingwix Installer    " -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Ensure winget exists
$winget = Get-Command winget -ErrorAction SilentlyContinue
if (-not $winget) {
    Write-Error "Winget not found. Please install App Installer from Microsoft Store."
    exit 1
}

# Software catalog
$softwareCatalog = @{
    1 = @{
        Name = "Power BI Desktop"
        Id   = "Microsoft.PowerBIDesktop"
        Source = "msstore"
    }
    2 = @{
        Name = "Google Chrome"
        Id   = "Google.Chrome"
        Source = "winget"
    }
    3 = @{
        Name = "Visual Studio Code"
        Id   = "Microsoft.VisualStudioCode"
        Source = "winget"
    }
    4 = @{
        Name = "7-Zip"
        Id   = "7zip.7zip"
        Source = "winget"
    }
}

function Show-MainMenu {
    Write-Host ""
    Write-Host "Main Menu"
    Write-Host "1) Install software"
    Write-Host "2) Quit"
}

function Show-SoftwareMenu {
    Write-Host ""
    Write-Host "Select software to install (comma separated, eg. 1,3,4):"
    foreach ($key in $softwareCatalog.Keys | Sort-Object) {
        Write-Host "$key) $($softwareCatalog[$key].Name)"
    }
}


function Install-Software ($selection) {
    foreach ($item in $selection) {
        if ($softwareCatalog.ContainsKey($item)) {
            $software = $softwareCatalog[$item]
            Write-Host ""
            Write-Host "Installing $($software.Name)..." -ForegroundColor Green

            winget install `
                --id $software.id `
                --source $software.Source `
                --accept-package-agreements `
                --accept-source-agreements `
                --silent
        else {
            Write-Host "Invalid selection:  
        }
   }
}

# Main loop
while ($true) {
    Show-MainMenu
    $choice = Read-HOst "Choose an option"

    switch ($choice) {
        "1" {
            Show-SoftwareMenu
            $input = Read-Host "Your choice"
            $selection = $input -split "," | ForEach-Object { $_.Trim() }
            Install-Software $selection
        }
        "2" {
            Write-Host "Exiting sellingwix. Goodbye!" -ForegroundColor Yellow
            break
        }
        default {
            Write-Host "Invalid option. Please try again." -ForegroundColor Red
        }
    }
}













