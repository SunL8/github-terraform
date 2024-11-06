resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            = true  # Required for Linux App Services
  sku {
    tier = var.app_service_tier
    size = var.app_service_size
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  site_config {
    linux_fx_version = var.linux_fx_version  # e.g., "PYTHON|3.8" or "NODE|14-lts"
  }

  app_settings = var.app_settings
}
