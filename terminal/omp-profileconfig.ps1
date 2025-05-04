oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\1_shell.omp.json" | Invoke-Expression
Install-Module -Name Terminal-Icons -Repository PSGallery -Force 
Import-Module -Name Terminal-Icons

#omp seup with icons and 1_shell.omp theme
