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
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name corejumpvm -AzContext $mycontext| Stop-AzVM -Force
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name ibmqcorenftvm -AzContext $mycontext| Stop-AzVM -Force
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name intspnftchnvm1-c1 -AzContext $mycontext| Stop-AzVM -Force
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name intspnfthubvm1-clone -AzContext $mycontext| Stop-AzVM -Force
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name intspnftsimvm1-clone -AzContext $mycontext | Stop-AzVM -Force
#Get-AzVM -ResourceGroupName "rg-spinnaker-poc" -Name intspnftsimvm1-clone2 -AzContext $mycontext | Stop-AzVM -Force
