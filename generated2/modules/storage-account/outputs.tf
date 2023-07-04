output "storage_account_name" {
  value       = azurerm_storage_account.storage_account.name
  description = "The name of the storage account."
}

output "storage_account_primary_access_key" {
  value       = azurerm_storage_account.storage_account.primary_access_key
  description = "The primary access key for the storage account."
  sensitive   = true
}

output "storage_account_secondary_access_key" {
  value       = azurerm_storage_account.storage_account.secondary_access_key
  description = "The secondary access key for the storage account."
  sensitive   = true
}

output "storage_account_primary_connection_string" {
  value       = azurerm_storage_account.storage_account.primary_connection_string
  description = "The primary connection string for the storage account."
  sensitive   = true
}

output "storage_account_secondary_connection_string" {
  value       = azurerm_storage_account.storage_account.secondary_connection_string
  description = "The secondary connection string for the storage account."
  sensitive   = true
}