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
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4ibmmqvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4jumphvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4jumphvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4kafkavm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4kafkavm1-new -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4kafkavm2N -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4monrvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4rabmqvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4rabmqvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4zookpervm1 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm1 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm2 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm3 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm4 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm5 -AzContext $mycontext| Start-AzVM
#Get-AzVM -ResourceGroupName "rg-volpaynft4" -Name nft4Cassandravm6 -AzContext $mycontext| Start-AzVM
Start-AzAksCluster -Name nft4volappaks1 -ResourceGroupName rg-volpaynft4
