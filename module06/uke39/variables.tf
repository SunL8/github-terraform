variable "location" {
  description = "Azure region"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "wso-rg-uke"
}

variable "storage_account_name" {
  description = "Storage account name prefix"
  default     = "sauke"
}

variable "vm_size" {
  description = "Virtual Machine Size"
  default     = "Standard_DS1_v2"
}
