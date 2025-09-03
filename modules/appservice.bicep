targetScope = 'resourceGroup'

param aspName string   
param appName string   
param location string
param skuName string
param skuTier string
param tags object = {}

resource plan 'Microsoft.Web/serverfarms@2024-11-01' = {
  name: aspName
  location: location
  sku: {
    name: skuName
    tier: skuTier
    capacity: 1
  }
  tags: tags
}

resource app 'Microsoft.Web/sites@2024-11-01' = {
  name: appName
  location: location
  identity: { type: 'SystemAssigned' }
  properties: {
    serverFarmId: plan.id
    httpsOnly: true
    siteConfig: {
    }
  }
  tags: tags
}


output appNameOut string = app.name
output planId string = plan.id
output principalId string = app.identity.principalId
