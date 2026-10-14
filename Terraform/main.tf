provider "azurerm" {
  features {}

  # Azure subscription details can be configured here if needed
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}