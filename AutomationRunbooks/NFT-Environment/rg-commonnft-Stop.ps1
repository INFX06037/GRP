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
Get-AzVM -ResourceGroupName "rg-commonnft" -Name jumpnft -AzContext $mycontext| Stop-AzVM -Force
Stop-AzAksCluster -Name Internalpocnft -ResourceGroupName RG-CommonNFT