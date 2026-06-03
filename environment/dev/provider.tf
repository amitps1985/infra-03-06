terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "edfusion-rg"
    storage_account_name = "stg233001"
    container_name       = "container"
    key                  = "dev.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "34cc9902-c707-4432-93a5-d466f2a325ab"

}