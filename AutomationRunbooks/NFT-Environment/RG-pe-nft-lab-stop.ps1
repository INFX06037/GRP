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
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm1 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm2 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm3 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm4 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm5 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm6 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm7 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm8 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm9 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm10-new -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm11 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm12 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm13 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm14 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "RG-pe-nft-lab" -Name penftlabvm15 -AzContext $mycontext | Stop-AzVM -Force
