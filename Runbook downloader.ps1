# Parameters
$ResourceGroupName = "Automation-Account-RG"
$AutomationAccountName = "NFT-Enviroment"
$DownloadPath = "d:\AutomationRunbooks"  # Change to your preferred path

# Ensure download directory exists
if (-not (Test-Path -Path $DownloadPath)) {
    New-Item -ItemType Directory -Path $DownloadPath
}

# Get all runbooks
$runbooks = Get-AzAutomationRunbook -ResourceGroupName $ResourceGroupName -AutomationAccountName $AutomationAccountName

foreach ($runbook in $runbooks) {
    $runbookName = $runbook.Name
    $runbookType = $runbook.RunbookType
    $fileExtension = if ($runbookType -eq "PowerShellWorkflow") { ".ps1" } else { ".ps1" } # Adjust if needed

    $content = Export-AzAutomationRunbook -ResourceGroupName $ResourceGroupName `
                                          -AutomationAccountName $AutomationAccountName `
                                          -Name $runbookName `
                                          -OutputFolder $DownloadPath `
                                          -Force

    Write-Host "Downloaded runbook: $runbookName"
}
