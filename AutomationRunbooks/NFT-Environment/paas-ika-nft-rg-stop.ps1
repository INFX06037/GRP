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
Get-AzVM -ResourceGroupName "paas-ika-nft-rg" -Name ikanftjumpvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "paas-ika-nft-rg" -Name ikanftkafkavm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "paas-ika-nft-rg" -Name ikanftrbtmqvm -AzContext $mycontext| Stop-AzVM -Force
Get-AzVM -ResourceGroupName "paas-ika-nft-rg" -Name ikanftzkprvm -AzContext $mycontext| Stop-AzVM -Force
Stop-AzAksCluster -Name ikanftaks -ResourceGroupName paas-ika-nft-rg