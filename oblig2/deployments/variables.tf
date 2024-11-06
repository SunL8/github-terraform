variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, staging, prod)"
}

variable "location" {
  type        = string
  description = "Azure location for deployment"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group for deployment"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the SQL server"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the SQL server"
  sensitive   = true
}

variable "database_collation" {
  type        = string
  description = "Collation for the SQL database"
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "max_size_gb" {
  type        = number
  description = "Maximum size of the SQL database in GB"
  default     = 2
}

variable "app_service_sku_name" {
  type        = string
  description = "SKU for the App Service plan"
}

variable "sql_sku_name" {
  type        = string
  description = "SKU for the SQL database"
}

variable "runtime_stack" {
  type        = string
  description = "Runtime stack for the app service (e.g., NODE|14-lts)"
}

variable "auth_enabled" {
  type        = bool
  description = "Enable or disable authentication for the app service"
  default     = false
}

variable "os_type" {
  type        = string
  description = "Operating system for the app service plan"
  default     = "Linux"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "subnet_configs" {
  type        = list(object({
    name           = string
    address_prefix = list(string)
  }))
  description = "List of subnet configurations"
}
