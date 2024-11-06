variable "environment" {
  type        = string
  description = "Deployment environment (dev, staging, prod)"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure location for the App Service"
}

variable "os_type" {
  type        = string
  description = "The operating system for the App Service Plan (e.g., Linux)"
  default     = "Linux"
}

variable "sku_name" {
  type        = string
  description = "The SKU tier for the App Service Plan"
  default     = "B1"
}

variable "runtime_stack" {
  type        = string
  description = "The runtime stack for the App Service (e.g., NODE|14-lts)"
}

variable "auth_enabled" {
  type        = bool
  description = "Enable or disable authentication for the App Service"
  default     = false
}