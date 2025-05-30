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
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftibbmqvm -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonrdbvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonrdbvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonrdbvm3 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonwdbvm1 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonwdbvm2 -AzContext $mycontext| Start-AzVM
Get-AzVM -ResourceGroupName "rg-citi-iso-nft" -Name citiisonftmonwdbvm3 -AzContext $mycontext| Start-AzVM