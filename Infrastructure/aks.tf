locals {
  aks_settings = var.aks_settings
}

module "aks-volvo" {
  source   = "./modules/aks/"
  depends_on = [module.rg-volvo]
  for_each = local.aks_settings
  aks_cluster_name          = each.value.aks_cluster_name
  resource_group_name       = var.rgname
  location                  = var.location
  aks_node_name             = each.value.aks_node_name
  node_count                = each.value.node_count
  vm_size                   = each.value.vm_size
  identity_type             = each.value.identity_type
}