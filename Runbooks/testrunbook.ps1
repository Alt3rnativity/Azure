$rgName = 'biceptestRG'
$location = 'CentralUS'
$stgActName = 'aultzdteststgact001'
$automationaccount = 'testautomation'
Start-AzAutomationRunbook -AutomationAccountName $automationaccount -Name "testrunbook" -ResourceGroupName $rgName