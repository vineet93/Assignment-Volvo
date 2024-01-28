resource "azurerm_container_registry" "acr-volvo" {
  name                    = var.acr_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  sku                     = var.acr_sku
}