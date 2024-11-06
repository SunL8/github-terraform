output "app_service_name" {
  description = "The name of the App Service"
  value       = azurerm_app_service.app_service.name
}

output "app_service_url" {
  description = "The default URL of the App Service"
  value       = azurerm_app_service.app_service.default_site_hostname
}

output "app_service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.id
}