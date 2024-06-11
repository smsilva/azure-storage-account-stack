terraform {
  required_version = ">= 0.15.1, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.74.0"
    }
  }
}

provider "azurerm" {
  features {}
}
