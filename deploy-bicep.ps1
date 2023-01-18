$subscription = 'enterprise' 
Connect-AzAccount -Subscription $subscription
$rgName = 'biceptestRG'
$location = 'CentralUS'
$stgActName = 'aultzdteststgact001'

#Create Resource Group
[array]$createRG = Get-AZResourceGroup -Name $rgName -Location $location
if($createRG.ProvisioningState -eq 'Succeeded'){
    Write-Output "$rgName already exists"
} else {
    [array]$createRG = New-AZResourceGroup -Name $rgName -Location $location
    if($createRG.ProvisioningState -eq 'Succeeded'){
        Write-Output "$rgName created"
    }
}

$StorageDeployment = New-AzResourceGroupDeployment -Name 'Test1' -stgActName $stgActName -ResourceGroupName $rgName -TemplateFile '.\storage.bicep'
