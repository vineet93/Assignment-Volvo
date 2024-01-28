locals {
  acr_settings = var.acr_settings
}

module "acr-mod" {
  source   = "./modules/acr/"
  depends_on = [module.rg-volvo]
  for_each = local.acr_settings
  acr_name                  = each.value.acr_name
  resource_group_name       = var.rgname
  location                  = var.location
  acr_sku                   = each.value.acr_sku
}
