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
