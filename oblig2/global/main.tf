terraform {
  required_version = ">= 0.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "wso-rg-backend"
    storage_account_name = "sabetfsxv1d0"
    container_name       = "tfstate"
    key                  = "oblig2-${terraform.workspace}.terraform.tfstate"
    # Credentials will be pulled from environment variables
  }
}

provider "azurerm" {
  subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb"
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}