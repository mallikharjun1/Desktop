Connect-AzAccount
New-AzStorageAccount -ResourceGroupName kinley -Name manstrg -Location "Northeurope" -SkuName Standard_LRS -Kind StorageV2 -AccessTier Hot 
Get-AzStorageAccount -ResourceGroupName kinley 
location = "eastus"
$resourceGroup = "bmrrg"
New-AzResourceGroup -ResourceGroupName $resourceGroup -Location $location
$storageAccountName = "bmrdemo"
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name $storageAccountName `
  -Location $location `
  -SkuName Standard_LRS `
  -Kind Storage

$ctx = $storageAccount.Context
$tableName = "pshtesttable"
New-AzStorageTable –Name $tableName –Context $ctx
New-Azvirt