# Set-ExecutionPolicy RemoteSigned

$result = git add . 2>&1
Write-Host $result
if (-not $result)
{
    Write-Host 'up-to-date'
    exit 0
}

$result = git push 2>&1
Write-Host $result
if ($result -match 'Everything up-to-date')
{
    exit 0
}

Write-Host "Pushed"
