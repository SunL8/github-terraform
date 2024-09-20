terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.73.0"
    }
  }
  backend "azurerm" {
    # rg-demo-wso-dev
    resource_group_name  = "rg-backend-tfstate-wso"
    storage_account_name = "sabetfsdn6p8"
    container_name       = "tfstate"
    key                  = "web-demo.terraform.tfstate"
    # Credentials will be pulled from environment variables
  }
}

provider "azurerm" {
  features {}
}