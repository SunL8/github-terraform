variable "location" {
  description = "The Azure Region in which the resources should be deployed."
  type        = string
  default     = "westeurope"
}

variable "rg_name" {
  description = "The base name of the Resource Group."
  type        = string
  default     = "tf-rg"
}

variable "vm_name" {
  description = "The base name of the Virtual Machine."
  type        = string
  default     = "tf-vm"
}
