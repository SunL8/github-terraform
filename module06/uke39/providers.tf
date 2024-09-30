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
  subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb"
  features {}
}