try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
    throw $_.Exception
}
Select-AzSubscription -SubscriptionId "254f0a3a-177a-4867-a814-4f76208232b9"
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm1 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm2 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm3 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm4 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm5 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm6 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftjumpvm | Stop-AzVM -Force
Stop-AzAksCluster -Name volxnftaks -ResourceGroupName RG-volx-nft
