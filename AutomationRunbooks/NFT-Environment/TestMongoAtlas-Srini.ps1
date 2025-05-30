$publickey = "pdrobtno"
$privatekey = "100b97ef-57c3-4738-93d1-c59c5c341dd3"

$clustername = "testcluster"
$projectid = "626ab761529b6740ad5a897d"


$uri = "https://cloud.mongodb.com/api/atlas/v2/groups/$projectid/clusters/$clustername"+"?envelope=false&pretty=true"


$headers = @{
    "Content-Type" = "application/vnd.atlas.2023-02-01+json"
    "Accept" = "application/vnd.atlas.2023-02-01+json"
}

$credential = New-Object System.Management.Automation.PSCredential ($publickey, (ConvertTo-SecureString -String $privatekey -AsPlainText -Force))


$db_current_config = Invoke-RestMethod -Uri $uri -Headers $headers -Method Get -Credential $credential

#Write-Host $db_current_config
foreach($row in $db_current_config.PSObject.Properties)
{
    If($row.Name -ne "paused")
    {
        #Write-Host $row.Name
        $db_current_config.PSObject.Properties.Remove($row.Name)
    }
}

If($db_current_config.paused -eq 0)
{
    $db_current_config.paused = 1
}

$dbstart = $db_current_config | ConvertTo-Json -Depth 10
Write-Host $dbstart

Invoke-RestMethod -Uri $uri -Headers $headers -Method Patch -Body $dbstart -Credential $credential | ConvertTo-Json -Depth 10