
#create multiple usernames

$firstUser, $secondUser, $thirdUser = "Chris", "Bob", "Mike"

$UserList = $firstUser, $secondUser, $thirdUser

# create common password

$Password = Read-Host -AsSecureString "Enter password here"

forEach ($User in $UserList) {

    # creates the user

    New-LocalUser -Name $User -Password $Password -Description "This is the account for $User" -FullName $User

    # add user to local group

    Add-LocalGroupMember -Group "Users" -Member $User

}







