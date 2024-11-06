variable "sql_server_name" {
  description = "The name of the MSSQL Server"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region for the MSSQL Server and Database"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the MSSQL Server"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the MSSQL Server"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the MSSQL Database"
  type        = string
}

variable "collation" {
  description = "The collation setting for the MSSQL Database"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "license_type" {
  description = "The licensing model for the MSSQL Database (e.g., 'LicenseIncluded')"
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "The maximum storage size in GB for the MSSQL Database"
  type        = number
  default     = 2
}

variable "sku_name" {
  description = "The SKU (pricing tier) for the MSSQL Database"
  type        = string
  default     = "S0"  # Example SKU, adjust based on environment needs
}

variable "enclave_type" {
  description = "The type of enclave for Always Encrypted with Secure Enclaves (e.g., 'VBS')"
  type        = string
  default     = "VBS"
}
