# Set-ExecutionPolicy RemoteSigned

$result = git add . 2>&1
if (-not $result)
{
    Write-Host 'git add : up-to-date'
    #exit 0
}
else
{
    Write-Host $result
}

$result = git commit -m "." 2>&1
if ($result -match 'nothing to commit, working tree clean')
{
    Write-Host 'git commit : up-to-date'
    exit 0
}
else
{
    Write-Host $result
}

$result = git push 2>&1
Write-Host $result
if ($result -match 'Everything up-to-date')
{
    Write-Host 'git push : up-to-date'
    exit 0
}
else
{
    Write-Host $result
}

Write-Host "up-to-date"
