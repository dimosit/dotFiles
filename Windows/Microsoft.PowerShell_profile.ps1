#autocomplete
#https://kevinlinxc.medium.com/how-hard-could-installing-autocomplete-for-powershell-be-4c8a2cbc69be
# Install-Module PSReadLine -AllowPrerelease -Force  run as admin to install fist time 
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

#use starship
# $ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
# Invoke-Expression (&starship init powershell)


#use oh-my-posh
# Install-Module oh-my-posh -Scope CurrentUser
# oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression

#a URL pointing to a remote config

#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json' | Invoke-Expression

oh-my-posh init pwsh --config 'C:\Users\d\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' | Invoke-Expression





set-alias unzip expand-archive
Set-Alias subl 'C:\Program Files\Sublime Text\subl.exe'



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


#Enable tab completion
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}


function get-path {
	($Env:Path).Split(";")
}



###aliases for PS
# Useful shortcuts for traversing directories
function cd...  { cd ..\.. }
function cd.... { cd ..\..\.. }
function cdgit {set-location "\\wsl.localhost\Ubuntu\home\d\gitrepos"}




# Alias powershell to not display the annoying logo
function powershell { powershell.exe -NoLogo }	


#wsl --shutdown
function wsld { wsl --shutdown}



