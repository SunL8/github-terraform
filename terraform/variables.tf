variable "client_id" {
  description = "The client ID for the Service Principal"
}
variable "client_secret" {
  description = "The client secret for the Service Principal"
}
variable "subscription_id" {
  description = "The subscription ID for the Azure account"
}
variable "tenant_id" {
  description = "The tenant ID for the Azure account"
}

variable "rg_name" {
  type = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type = string
  description = "The location of the resource group"
}