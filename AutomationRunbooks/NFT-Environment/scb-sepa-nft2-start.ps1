try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
    throw $_.Exception
}
Select-AzSubscription -SubscriptionId "e1ade081-1977-488c-9025-7de1b7fc2df9"
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm1 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm2 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm3 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm4 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm5 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm6 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm7 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm8 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm9 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm10 | Start-AzVM
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm11 | Start-AzVM
Start-AzAksCluster -Name scbsnftappaks2 -ResourceGroupName paas-scb-sepa-nft-rg
#This Runbook is start NFT team environment