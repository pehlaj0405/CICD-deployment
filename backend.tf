terraform {
  backend "azurerm" {
    resource_group_name  = "myproject"
    storage_account_name = "tfbg"
    container_name       = "tfcontainer"
    key                  = "storage-account.tfstate" # for testing
  }
}