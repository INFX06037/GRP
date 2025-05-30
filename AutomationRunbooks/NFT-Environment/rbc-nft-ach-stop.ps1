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
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftjumpvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftmiddlewarevm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftmonitorvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibm-new -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibm1 -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibmmq -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcfednftjump -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftibmmqvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftjumpvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftmonitorvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name RBCACHKafka -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm2-centralus -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm3-centralus -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm3 -AzContext $mycontext | Stop-AzVM -Force
Stop-AzAksCluster -Name rbcfednftaks -ResourceGroupName rg-rbcnft
Stop-AzAksCluster -Name rbcachnftaks -ResourceGroupName RG-RBC-ACH-NFT
Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "rbcnftsqlserver" -DatabaseName "rbcachnftsqldb" -Edition "Hyperscale" -RequestedServiceObjectiveName "HS_S_Gen5_2"