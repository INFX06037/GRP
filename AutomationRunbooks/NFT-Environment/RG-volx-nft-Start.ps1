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
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm4 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm5 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftinfravm6 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-volx-nft" -Name volxnftjumpvm -AzContext $mycontext| Start-AzVM

Start-AzAksCluster -Name volxnftaks -ResourceGroupName RG-volx-nft
