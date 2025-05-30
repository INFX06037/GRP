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
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm1 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm2 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm3 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm4 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm5 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-volbasenft" -Name volbnftappvm6 -AzContext $mycontext | Stop-AzVM -Force
Set-AzAksCluster -NodeCount 1 -NodeName volbnftnp1  -ResourceGroupName rg-volbasenft -Name volbnftappaks1
Stop-AzAksCluster -Name volbnftappaks1 -ResourceGroupName rg-volbasenft