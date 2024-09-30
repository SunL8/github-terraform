# providers.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-wso"
    storage_account_name = "sabetfsdn6p8"
    container_name       = "tfstate"
    key                  = "web.${terraform.workspace}.tfstate"
    # Credentials will be pulled from environment variables
  }
}

provider "azurerm" {
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
  features {}
}
