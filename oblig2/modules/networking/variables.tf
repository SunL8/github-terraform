variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_configs" {
  type = list(object({
    name           = string
    address_prefix = list(string)
  }))
  description = "Configuration for each subnet, including name and address prefix"
  default = [
    {
      name           = "subnet1"
      address_prefix = ["10.0.1.0/24"]
    },
    {
      name           = "subnet2"
      address_prefix = ["10.0.2.0/24"]
    }
  ]
}

variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
}
