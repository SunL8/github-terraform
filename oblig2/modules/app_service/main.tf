resource "random_string" "unique_suffix" {
  length  = 4
  special = false
  upper   = false
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.environment}-app-plan-${random_string.unique_suffix.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_app_service" "app_service" {
  name                = "${var.environment}-app-service-${random_string.unique_suffix.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = azurerm_service_plan.app_service_plan.id

  site_config {
    always_on       = true
    linux_fx_version = var.runtime_stack
  }

  auth_settings {
    enabled = var.auth_enabled
  }
}
