$Password = Read-Host "{{ PASSWORD COMPLEXITY VERIFICATION }}`n`nPassword must meet these requirements:  
`n`nAt least one upper case letter [A-Z]`nAt least one lower case letter [a-z]`nAt least one number [0-9]`nAt least one special character (!,@,%,^,&,$,_)`nPassword length must be 7 to 25 characters.`n`n`nEnter Password"
  
if(($Password -cmatch '[a-z]') -and ($Password -cmatch '[A-Z]') -and ($Password -match '\d') -and ($Password.length -match '^([7-9]|[1][0-9]|[2][0-5])$') -and ($Password -match '!|@|#|%|^|&|$|_')) 
{ 
    Write-Host "`nPassword is valid!`n"
} 
else
{ 
    Write-Host "`nPassword must contain uppercase and lower case  and at least 1 number and special char!`n"
}