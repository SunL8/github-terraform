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
  description = "The Azure location for the SQL Server"
}

variable "admin_username" {
  type        = string
  description = "The administrator username for the SQL Server"
}

variable "admin_password" {
  type        = string
  description = "The administrator password for the SQL Server"
  sensitive   = true
}

variable "database_collation" {
  type        = string
  description = "The collation for the SQL Database"
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "sku_name" {
  type        = string
  description = "The SKU for the SQL Database"
  default     = "S0"
}

variable "max_size_gb" {
  type        = number
  description = "The maximum size of the database in gigabytes"
  default     = 2
}
