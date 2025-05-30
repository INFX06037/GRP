try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
    throw $_.Exception
}
$mycontext = Set-AzContext -SubscriptionId "254f0a3a-177a-4867-a814-4f76208232b9"
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm3 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm4 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm5 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm6 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "RG-BAC-NFT" -Name bacnftvm7 -AzContext $mycontext | Start-AzVM
Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "bacnftsqlserver" -DatabaseName "bacnftsqldb" -Edition "GeneralPurpose" -RequestedServiceObjectiveName "GP_Gen5_8"