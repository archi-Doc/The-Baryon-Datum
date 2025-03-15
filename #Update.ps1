# Set-ExecutionPolicy RemoteSigned

Write-Host 'git pull'
git pull

Write-Host 'git add'
git add .

Write-Host 'git commit'
$result = git commit -m "." 2>&1
if ($result -match 'nothing to commit, working tree clean')
{
    Write-Host
    Write-Host 'No update'
    pause
    exit 0
}
else
{
    Write-Host $result
}

Write-Host 'git push'
$result = git push 2>&1
if ($result -match 'Everything up-to-date')
{
    Write-Host
    Write-Host 'No update'
    pause
    exit 0
}
else
{
    Write-Host $result
}

Write-Host
Write-Host "up-to-date"

pause
