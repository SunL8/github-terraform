output "mssql_server_name" {
  description = "The name of the MSSQL Server"
  value       = azurerm_mssql_server.mssql_server.name
}

output "mssql_server_fqdn" {
  description = "The fully qualified domain name of the MSSQL Server"
  value       = azurerm_mssql_server.mssql_server.fully_qualified_domain_name
}

output "mssql_database_name" {
  description = "The name of the MSSQL Database"
  value       = azurerm_mssql_database.mssql_database.name
}
