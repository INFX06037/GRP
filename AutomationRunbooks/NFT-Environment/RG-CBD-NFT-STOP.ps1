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
Set-AzSqlDatabase -ResourceGroupName "RG-CBD-NFT" -ServerName "cbdnftsqlserver" -DatabaseName "cbdnftsqldb" -Edition "Standard" -RequestedServiceObjectiveName "S0" 
Get-AzVM -ResourceGroupName "RG-CBD-NFT" -Name cbdnftjumpvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-CBD-NFT" -Name cbdnftibmmqvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-CBD-NFT" -Name cbdnftamqvm -AzContext $mycontext| Stop-AzVM -Force
Stop-AzAksCluster -Name cbdnftaks -ResourceGroupName RG-CBD-NFT