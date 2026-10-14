provider "azurerm" {
  features {}

  # Azure subscription details can be configured here if needed
}

resource "azurerm_resource_group" "example" {
  name     = "varsha"
  location = "eastus"
}


