output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.storage.primary_access_key
}

output "container_name" {
  description = "The name of the storage container"
  value       = azurerm_storage_container.storage_container.name
}

output "storage_account_connection_string" {
  description = "The connection string of the storage account"
  value       = azurerm_storage_account.storage.primary_connection_string
}
