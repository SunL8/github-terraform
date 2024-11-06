output "app_service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_app_service_plan.app_service_plan.id
}

output "app_service_name" {
  description = "The name of the App Service"
  value       = azurerm_app_service.app_service.name
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service"
  value       = azurerm_app_service.app_service.default_site_hostname
}
