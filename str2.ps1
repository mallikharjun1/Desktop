
$storgacnt=@('king32','queen54','god43','mass')

foreach($G in $storgacnt )

{

New-AzStorageAccount -ResourceGroupName maggie -Name $G  -SkuName Standard_LRS -Location "west us" -Kind StorageV2 -AccessTier Cool
}