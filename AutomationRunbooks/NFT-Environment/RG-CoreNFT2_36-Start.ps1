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
Get-AzVM -ResourceGroupName "RG-CoreNFT2.34" -Name corenftibmmqvm -AzContext $mycontext| Start-AzVM
Start-AzAksCluster -Name Corenft-aks -ResourceGroupName RG-CoreNFT2.34
#Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "corenftsqlserver" -DatabaseName "corenftvoplaydb" -Edition "Hyperscale" -RequestedServiceObjectiveName "HS_S_Gen5_12"