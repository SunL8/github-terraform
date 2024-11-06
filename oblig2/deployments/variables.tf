# General settings
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

# Networking variables
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnets" {
  description = "Map of subnet names to their CIDR blocks"
  type        = map(string)
}

# App Service variables
variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
}

variable "app_service_tier" {
  description = "App Service pricing tier (e.g., 'Standard')"
  type        = string
}

variable "app_service_size" {
  description = "App Service instance size (e.g., 'S1')"
  type        = string
}

variable "linux_fx_version" {
  description = "Runtime stack version for Linux App Service (e.g., 'NODE|14-lts')"
  type        = string
}

variable "app_settings" {
  description = "App settings for the App Service"
  type        = map(string)
  default     = {}
}

# Database variables
variable "sql_server_name" {
  description = "Name of the SQL server"
  type        = string
}

variable "admin_username" {
  description = "SQL Server administrator username"
  type        = string
}

variable "admin_password" {
  description = "SQL Server administrator password"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Name of the SQL database"
  type        = string
}

variable "collation" {
  description = "Collation for SQL database"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "license_type" {
  description = "License type for SQL Server (e.g., 'LicenseIncluded' or 'BasePrice')"
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "Max size of the SQL database in GB"
  type        = number
  default     = 5
}

variable "sku_name" {
  description = "SKU name for SQL Database (e.g., 'GP_Gen5_2')"
  type        = string
}

variable "enclave_type" {
  description = "Enclave type for SQL database"
  type        = string
  default     = "None"
}

# Storage variables
variable "container_name" {
  description = "Name of the Blob Storage container"
  type        = string
}

# Load Balancer variables
variable "public_ip_name" {
  description = "Name of the Public IP for the Load Balancer"
  type        = string
}

variable "lb_name" {
  description = "Name of the Load Balancer"
  type        = string
}
