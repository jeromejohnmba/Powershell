# new object project

# PSCustomObject is a class used for creating custom objects
# PSObject creates objects

$person = New-Object -TypeName PSObject -Property @{
    Name = "James"
}

# add-member command adds methods and properties
# noteproperty holds name and value
# Add-Member changes the object
# no same properties

$person | Add-Member -MemberType NoteProperty -Name "age" -Value 50
$person | Add-Member -MemberType NoteProperty -Name "gender" -Value "male"

$person

# more modern way using a hash table

$oldPerson = [PSCustomObject]@{
    Name = "Chris"
}

$oldPerson | Add-Member -MemberType NoteProperty -Name "location" -Value "US"
$oldPerson | Add-Member -MemberType NoteProperty -Name "phone" -Value 9388484

#ScriptMethod adds a method to the object

$oldPerson | Add-Member -MemberType ScriptMethod -Name "walk" -Value { "walking"}

$oldPerson.walk()

$oldPerson | Add-Member -MemberType NoteProperty

