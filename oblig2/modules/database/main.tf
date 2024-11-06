resource "azurerm_mssql_server" "sql_server" {
  name                         = "${var.environment}-sqlserver"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "sql_database" {
  name         = "${var.environment}-db"
  server_id    = azurerm_mssql_server.sql_server.id
  collation    = var.database_collation
  license_type = "LicenseIncluded"
  max_size_gb  = var.max_size_gb
  sku_name     = var.sku_name
}