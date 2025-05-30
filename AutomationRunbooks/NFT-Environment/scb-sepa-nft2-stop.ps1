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
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm1 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm2 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm3 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm4 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm5 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm6 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm7 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm8 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm9 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm10 | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "PAAS-SCB-SEPA-NFT-RG" -Name scbsnftvm11 | Stop-AzVM -Force
Stop-AzAksCluster -Name scbsnftappaks2 -ResourceGroupName paas-scb-sepa-nft-rg
#This runbook is to stop NFT Environment