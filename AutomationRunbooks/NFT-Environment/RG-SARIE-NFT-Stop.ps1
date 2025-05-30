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
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft7 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft8 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft9 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarinftvm1 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm10 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm2 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm3 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm4 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm5 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm6 | Stop-AzVM -Force