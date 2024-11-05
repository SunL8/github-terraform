variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  type        = map(string)
  description = "A map of subnet names to address prefixes"
  default     = {
    "subnet1" = "10.0.1.0/24",
    "subnet2" = "10.0.2.0/24"
  }
}

variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
  default     = "default-nsg"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
}
