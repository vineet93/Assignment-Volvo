resource "azurerm_subnet" "snet" {
  name                 = var.snet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.addr_prefix
  # depends_on           = [var.dependencies]
}