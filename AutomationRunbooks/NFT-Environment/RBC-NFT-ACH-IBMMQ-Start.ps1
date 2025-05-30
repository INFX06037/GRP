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
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftibmmqvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftmonitorvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "RG-RBC-ACH-NFT" -Name rbcachnftjumpvm -AzContext $mycontext| Start-AzVM