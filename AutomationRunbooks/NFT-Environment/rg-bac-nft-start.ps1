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
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnftamqvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnftchnvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnftchnvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnfthubvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnfthubvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-bac-nft" -Name bacnftrestvm1 -AzContext $mycontext | Start-AzVM