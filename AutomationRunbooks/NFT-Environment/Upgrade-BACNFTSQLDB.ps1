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
Set-AzSqlDatabase -ResourceGroupName "rg-bac-nft" -ServerName "bacnftsqlserver" -DatabaseName "bacnftsqldb" -Edition "GeneralPurpose" -RequestedServiceObjectiveName "GP_Gen5_8"
#Set-AzSqlDatabase -ResourceGroupName "RG-CBD-NFT" -ServerName "cbdnftsqlserver" -DatabaseName "cbdnftsqldb" -Edition "GeneralPurpose" -RequestedServiceObjectiveName "GP_Gen5_8"
#Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "corenftsqlserver" -DatabaseName "rbcfednftsqldb" -Edition "GeneralPurpose" -RequestedServiceObjectiveName "GP_Gen5_8"
#Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "volpaynftsqlserver" -DatabaseName "serianftsqldb" -Edition "Hyperscale" -RequestedServiceObjectiveName "HS_Gen5_8"

