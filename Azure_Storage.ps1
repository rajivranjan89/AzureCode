#Create Storage account

# put resource group in a variable so you can use the same group name going forward,
# without hard-coding it repeatedly
$resourceGroup = "storage-resource-group"
$location = "westus"
New-AzResourceGroup -Name $resourceGroup -Location $location

New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name <account-name> `
  -Location $location `
  -SkuName Standard_RAGRS `
  -Kind StorageV2
  
Remove-AzStorageAccount -Name <storage-account> -ResourceGroupName <resource-group>

#create share file
az storage share create

az storage share create \
--account-name <unique account name> \
--account-key <account key> \
--name <share name>
