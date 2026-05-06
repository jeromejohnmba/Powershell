# arrays practice

# arrays have multiple things
# arrays are just variables with multiple values

$oldPerson = 25, "James", "Male"

$oldPerson

# arrays use subexpression operators

$newPerson = @(27, "Chris", "Jason")

# prints first and third item and not in between

$newPerson[0,2]

# you can use multiple indices for many items

$anotherPerson = $newPerson[1,2,3]
$anotherPerson

# ... prints everything in between

$newPerson[0..2]

# ... can go backwards with reverse range trick

$newPerson[2..0]

# negative numbers go backwards to but starts at -1

$newPerson[-2]

# foreach allows you to do the same thing on each item
# this gives us length of each item
# PSitem is a stand in value for items

$newPerson.ForEach({ $PSItem.Length })

# arrays can be added also called concantenation

$oldPerson + $newPerson

# you can times arrays to copy them

$oldPerson * 3

# you can add new items to arrays

$newPerson += "Smith"

# you can multiply array values as well

$olderPerson = $newPerson[0] *= 3
$olderPerson

# containment operators are -contains, -notcontains, -in, and -notin check if items exists in array
# contains and in both do the same thing but written backwards


$oldestPerson = @(41, "Mark", "Brown")
$oldestPerson -contains 41
40 -in $oldestPerson

#join allows you to add your own symbols

$oldestPerson -join "+"
$oldestPerson -join " "

# you can make types stay on arrays

[String[]].$youngPerson = 25, "Steve", "Wilson", "Male"

# can be done with int to

[int[]].$midPerson = 65

# arrays can hold objects

$personArray = @(

    [PSCustomObject]@{Name = "Colt"; Age =25 }
    [PSCustomObject]@{Name = "Donald"; Age = 50 }

)

$personArray

# you can use properties and methods on arrays
# $_ signifies the item being processes

$personArray.ForEach( {$_.Name + " is " + $_.Age + " years old"} )

