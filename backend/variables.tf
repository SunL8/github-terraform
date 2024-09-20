variable "rg_backend_name" {
  description = "The name of the resource group for the backend"
  type        = string
  
}

variable "rg_backend_location" {
  description = "The location of the resource group for the backend"
  type        = string
}

variable "sa_backend_name" {
  description = "The name of the storage account for the backend"
  type        = string
}

variable "sc_backend_name" {
  description = "The name of the storage container for the backend"
  type        = string
}

variable "kv_backend_name" {
  description = "The name of the key vault for the backend"
  type        = string
}

variable "sa_backend_accesskey_name" {
  description = "The name of the storage account access key for the backend"
  type        = string
  
}