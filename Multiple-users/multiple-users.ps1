

# creates multiple local users
# @() creates an array of usernames
# ReadHost stores password securely once it is entered
# forEach loops over each user name then asks to create a password from the user

$usernames = @("James", "Chris")
$password = Read-Host -AsSecureString "Enter default password"
$usernames | ForEach-Object {
    New-LocalUser -Name $_ -password $password
}

# create a local user without a password
# expire user account
# account expires after 30 days after calculating the date from Get-Date

New-LocalUser -Name 'Jason' -AccountExpires (Get-Date).AddDays(30) -Description 'This is a local user account.' -NoPassword

#create a local user account with a password

$Password = Read-Host -AsSecureString
$params = @{
    Name = 'new user'
    Password = $password
    FullName = 'Jason Redson'
    Description = 'This is a new account for Jason'
}

New-LocalUser @params

# Expires an existing user 

Set-LocalUser -Name "ExistingUser" -AccountExpires (Get-Date).AddDays(7)


