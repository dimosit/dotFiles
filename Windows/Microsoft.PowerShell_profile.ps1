#autocomplete
# Install-Module PSReadLine -AllowPrerelease -Force  run as admin to install fist time 
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

#use starship
# $ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
# Invoke-Expression (&starship init powershell)


#use oh-my-posh
# oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression

#a URL pointing to a remote config
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json' | Invoke-Expression





# Function to process multiple WinGet Upgrades
function Winget-Upgrade {
	Param(
		# List of packages to upgrade
		[Parameter(Position = 0, Mandatory = $true)]
		[string[]] $Packages
	)
	foreach ($Package in $Packages) {
		$Package = $Package.Trim()
		Write-Host ('Upgrading {0}...' -f $Package) -ForegroundColor Green
		WinGet Upgrade $Package
	}
}






###aliases for PS
# Useful shortcuts for traversing directories
function cd...  { cd ..\.. }
function cd.... { cd ..\..\.. }




# Alias powershell to not display the annoying logo
function powershell { powershell.exe -NoLogo }	


#wsl --shutdown
function wsld { wsl --shutdown}