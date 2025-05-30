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
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm3 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm4 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm5 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftcossvm6 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftjumpvm -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftkafkavm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftkafkavm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftkafkavm3 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm3 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm4 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm5 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm6 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftmonvm7 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftrmqvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftrmqvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftrmqvm3 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftzkprvm1 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftzkprvm2 -AzContext $mycontext | Start-AzVM
Get-AzVM -ResourceGroupName "rg-poste-nft" -Name postenftzkprvm3 -AzContext $mycontext | Start-AzVM