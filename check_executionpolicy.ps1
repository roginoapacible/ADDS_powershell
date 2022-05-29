#message---------------------
$message = 
"
[1]Check Execution Policy
[2]Set CurrentUser RemoteSigned
[3]Set CurrentUser AllSigned
[4]Set Execution Policy Default
[5]Exit
"
#message---------------------


#selections -----------------
$1 = Get-ExecutionPolicy -list
#$2 = Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser; $1
#$3 = Set-ExecutionPolicy -ExecutionPolicy AllSigned -Scope CurrentUser; $1
#$4 = Set-ExecutionPolicy -ExecutionPolicy Default -Scope CurrentUser; $1
#selection -------------------

#switch-----------------------
Write-Host "Execution Policy Menu:"
$message
$choice = switch($select = Read-host "Selection:")
{
1 {$1}
2 {$2}
3 {$3}
4 {$4}
5 {Exit}
default {'No, selection'}
}
$choice