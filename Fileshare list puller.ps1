# Login to Azure account if needed
Connect-AzAccount

# Define your storage account name and resource group
$storageAccountName = "volindinternalfileshare"
$resourceGroupName = "Volante-internal"  # <-- Replace with actual RG name

# Get storage account context
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$ctx = $storageAccount.Context

# Get all file shares in the storage account
$fileShares = Get-AzStorageShare -Context $ctx

# Prepare output
$output = @()
$counter = 1

foreach ($share in $fileShares) {
    $usedBytes = ($share.ShareProperties.Quota - $share.ShareProperties.RemainingQuota) * 1MB
    $usedGB = "{0:N2}" -f ($usedBytes / 1GB)

    $output += [PSCustomObject]@{
        'S.No'              = $counter
        'Fileshare name'    = $share.Name
        'Used storage capacity (GB)' = $usedGB
    }

    $counter++
}

# Export or display results
$output | Format-Table -AutoSize
# Optional: Export to CSV
# $output | Export-Csv -Path "FileSharesReport.csv" -NoTypeInformation
