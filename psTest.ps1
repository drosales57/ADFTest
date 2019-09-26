param(
  [Parameter(Mandatory)]
  [String]$drop,
  [String]$rgname,
  [String]$dfname,
  [String]$subscriptionId,
  [String]$tenantid,
  [String]$appid,
  [String]$password
  )
  
#Login Usins Service Principle Authentication
$userPassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$userCredential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $appid, $userPassword 
Connect-AzAccount -TenantId $tenantid -ServicePrincipal -SubscriptionId $subscriptionId -Credential $userCredential
