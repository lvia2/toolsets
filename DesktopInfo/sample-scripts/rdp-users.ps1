$output = $(quser) -Replace '>',''
$output = $output -Replace '\s{2,}','`t'
$($output.trim() | convertfrom-csv -delimiter '`' | ft -Property USERNAME -HideTableHeaders| Out-String).Trim()