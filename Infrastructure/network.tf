locals {
  snet_settings     = var.snet_settings
  vnet_settings     = var.vnet_settings
}

module "vnet" {
  source = "./modules/vnet/"
  depends_on = [module.rg-volvo]
  for_each = local.vnet_settings

  vnet_name           = each.value.vnet_name
  addr_space          = each.value.addr_space
  location            = var.location
  resource_group_name = var.rgname
  dns_servers         = each.value.dns_servers
}

module "subnet" {
  source   = "./modules/snet/"
  depends_on = [module.vnet]
  for_each = local.snet_settings

  snet_name           = each.value.snet_name
  addr_prefix         = each.value.addr_prefix
  resource_group_name = var.rgname
  vnet_name           = each.value.vnet_name
}
