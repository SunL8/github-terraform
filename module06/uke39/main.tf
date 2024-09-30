# main.tf
locals {
  workspace      = terraform.workspace
  name_suffix    = terraform.workspace != "default" ? "-${terraform.workspace}" : ""
  sa_name_suffix = terraform.workspace != "default" ? terraform.workspace : "default"
}

resource "azurerm_resource_group" "main" {
  name     = "${var.resource_group_name}${local.name_suffix}"
  location = var.location
}

resource "random_string" "storage_account_suffix" {
  length  = 5
  upper   = false
  special = false
}

resource "azurerm_storage_account" "main" {
  name                     = "${var.storage_account_name}${random_string.storage_account_suffix.result}${local.sa_name_suffix}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = local.workspace
  }
}
