variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "app_service_tier" {
  description = "The pricing tier for the App Service Plan"
  type        = string
  default     = "Standard"
}

variable "app_service_size" {
  description = "The instance size for the App Service Plan"
  type        = string
  default     = "S1"  # Example Standard size
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group for the App Service"
  type        = string
}

variable "location" {
  description = "The Azure region for the App Service"
  type        = string
}

variable "linux_fx_version" {
  description = "The runtime stack for the App Service (e.g., 'PYTHON|3.8')"
  type        = string
  default     = "NODE|14-lts"
}

variable "app_settings" {
  description = "Key-value pairs of app settings"
  type        = map(string)
  default     = {}
}
