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
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinftchannelvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinftchannelvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinfthubvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinfthubvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinftrestvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinftibmmqvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-rbsi-nft" -Name rbsinftclonedtestvm1 -AzContext $mycontext | Start-AzVM
#Set-AzSqlDatabase -ResourceGroupName "rg-rbsi-nft" -ServerName "rbsinftsqlserver" -DatabaseName "rbsinftsqldb" -Edition "GeneralPurpose" -RequestedServiceObjectiveName "GP_Gen5_8"