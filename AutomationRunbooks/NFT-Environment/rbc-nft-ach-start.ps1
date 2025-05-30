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
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftjumpvm -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftmiddlewarevm -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibm-new -AzContext $mycontext | Start-AzVM
#Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibm -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftibm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnftmonitorvm -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcfednftjump -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name RBCACHKafka -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm2-centralus -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm3-centralus -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcachnftkafkavm3 -AzContext $mycontext | Start-AzVM
Start-AzAksCluster -Name rbcnftaks -ResourceGroupName rg-rbcnft
Start-AzAksCluster -Name rbcfednftaks -ResourceGroupName rg-rbcnft
Set-AzSqlDatabase -ResourceGroupName "Cloud_Internal" -ServerName "rbcnftsqlserver" -DatabaseName "rbcachnftsqldb" -Edition "Hyperscale" -RequestedServiceObjectiveName "HS_S_Gen5_32"