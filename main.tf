locals {
  env_suffix = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.base_name}-${local.env_suffix}-rg"
  location = var.location
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_storage_account" "storage" {
  name                     = lower("${var.base_name}${local.env_suffix}${random_string.suffix.result}") # must be lowercase and unique (3-24)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public = false
  public_network_access_enabled   = false
}