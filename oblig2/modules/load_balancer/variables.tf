variable "public_ip_name" {
  description = "The name of the public IP for the Load Balancer"
  type        = string
}

variable "lb_name" {
  description = "The name of the Load Balancer"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group for the Load Balancer"
  type        = string
}

variable "location" {
  description = "The Azure location for the Load Balancer"
  type        = string
}
