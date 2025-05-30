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
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2ch1 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2ch2 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2ch3 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2hub1 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2hub2 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2hub3 -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2ibmmq -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2restui -AzContext $mycontext | Stop-AzVM -Force
Get-AzVM -ResourceGroupName "rg-rbcnft" -Name rbcnft2simulator -AzContext $mycontext | Stop-AzVM -Force