Function Prompt { "$((get-item $pwd).Name )> " }

Import-Module posh-git

Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

New-Alias open ii
New-Alias which where.exe
New-Alias vi nvim
New-Alias vim nvim
New-Alias export set

$Env:LANG = "$($PSUICulture.replace("-", "_")).UTF-8"

fnm env --use-on-cd | Out-String | Invoke-Expression
fnm completions --shell powershell | Out-String | Invoke-Expression
gh completion --shell powershell | Out-String | Invoke-Expression
