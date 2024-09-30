# variables.tf

variable "location" {
  description = "The Azure region to deploy resources."
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "The name prefix of the Resource Group."
  type        = string
  default     = "wso-tf-rg-uke"
}

variable "storage_account_name" {
  description = "The name prefix of the Storage Account."
  type        = string
  default     = "tfstor"
}

variable "admin_password" {
  description = "Admin password for the VM."
  type        = string
  sensitive   = true
}

variable "index_document" {
  description = "The name of the index document."
  type        = string
  default     = "index.html"
}

# Azure Credentials
variable "ARM_CLIENT_ID" {
  description = "Azure Client ID"
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = "Azure Client Secret"
  type        = string
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure Subscription ID"
  type        = string
}

variable "ARM_TENANT_ID" {
  description = "Azure Tenant ID"
  type        = string
}
