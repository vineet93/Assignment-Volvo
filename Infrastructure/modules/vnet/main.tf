resource "azurerm_virtual_network" "vnet" {
  location            = var.location
  resource_group_name = var.resource_group_name
  name                = var.vnet_name
  address_space       = var.addr_space
  dns_servers         = var.dns_servers
  # depends_on           = [var.dependencies]
}