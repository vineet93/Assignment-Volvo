terraform {

  backend "azurerm" {
    subscription_id      = "1e13c830-8252-44d8-8e59-de2c691e522d"
    resource_group_name  = "rg-test"                            # RG where state file located
    storage_account_name = "strgtfbackendstatefile"             # Storage Account in the RG where state file located
    container_name       = "strgconttfbackendstatefile"         # Container in the Storage Account where state file located
    key                  = "terraform.tfstate"                  # Name of the state file
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "1e13c830-8252-44d8-8e59-de2c691e522d"
  tenant_id       = "68c77c05-00fd-4d65-abb7-e42804e9e7d7"
}