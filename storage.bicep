
@minLength(3)
@maxLength(24)
param stgActName string 

@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_RAGRS'
  'Standard_ZRS'
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GZRS'
])
param stgActSku string = 'Standard_LRS'

param stgTags object = {
  Environment: 'Lab'
  Dept: 'IT'
}

param stgLocation string = 'CentralUS'
param stgKind string = 'StorageV2'


resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: stgActName
  sku: {
    name: stgActSku
  }
  kind: stgKind
  location: stgLocation
  tags: stgTags
}
