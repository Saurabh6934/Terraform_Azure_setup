terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "skpcg"
    storage_account_name  = "skpstoragebackend"
    container_name        = "skp-container"
    key                   = "saurabhtf.tfstate"
    use_azuread_auth      = true
  }

}

provider "azurerm" {
  features {}
  subscription_id = "85002d33-efb7-4e6a-8e6d-7457837654e2"
}