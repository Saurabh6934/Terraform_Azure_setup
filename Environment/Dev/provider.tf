terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "skpcg"
    storage_account_name  = "skpstoragebackend1"
    container_name        = "skp-container"
    key                   = "saurabhtf.tfstate"
    subscription_id = "b6571c78-f766-4999-8358-e9602abe50cf"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "b6571c78-f766-4999-8358-e9602abe50cf"
}

