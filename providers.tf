terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
  #subscription_id = var.subscription_id #for testing2
  # Authentication will be done by environment variables (ARM_*), or az cli locally.
}