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
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftjumpvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftibmextvm1  -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftkafakvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftkafakvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftkafakvm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftzookepervm1  -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftzookepervm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftzookepervm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftrabbitintvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftrabbitintvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftrabbitintvm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtpnftmongoreadvm  -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo4 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo5 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-rtpnft" -Name rtp-nft-mongo6 -AzContext $mycontext| Start-AzVM
Select-AzSubscription -SubscriptionId "254f0a3a-177a-4867-a814-4f76208232b9"
Start-AzAksCluster -Name rtpnftaks -ResourceGroupName rg-rtpnft
Set-AzAksCluster -NodeCount 1 -NodeName rtpnftnodes2 | -ResourceGroupName rg-rtpnft -Name rtpnftaks