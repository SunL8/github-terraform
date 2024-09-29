terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.73.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rg-backend-tfstate-wso"
    storage_account_name  = "sabetfsdn6p8"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
    # Credentials will be pulled from environment variables
  }
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
