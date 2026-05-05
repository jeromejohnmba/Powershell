#logical operators

# and MUST have both statements true

$age = 54
$lessAge = 20
$moreAge = 31

$andStatement = $lessAge -le $age -and $moreAge -ge $age
Write-Host $andStatement

# or MUST have one statement true

$orStatement = $lessAge -le $age -or $moreAge -ge $age
Write-Host $orStatement

# xor gives you true is ONLY one statement is true

$xorStatement = $lessAge -gt $age -xor $moreAge -eq $age
Write-Host $xorStatement

# -not or ! reverses the signs

$notAge = !($lessAge -eq $age)
Write-Host $notAge

$notAgeto = -not($lessAge -ge $age)
Write-Host $notAgeto

# ne can also be used

$result = $age -ne $lessAge
Write-Host $result