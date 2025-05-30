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
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft7 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft8 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienft9 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarinftvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm10 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm4 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm5 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-SARIE-NFT" -Name sarienftvm6 -AzContext $mycontext| Start-AzVM