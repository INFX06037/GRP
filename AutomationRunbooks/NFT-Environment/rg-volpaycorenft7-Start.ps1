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
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7ibmextrnlvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7jumpvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7jumpvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7kafakavm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7kafakavm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7mongoreadvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7rabbitintvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7rabbitintvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7zookeepervm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-volpaycorenft7" -Name volpaycorenft7zookeepervm1 -AzContext $mycontext| Start-AzVM
Start-AzAksCluster -Name nft7apptier -ResourceGroupName RG-volpaycorenft7