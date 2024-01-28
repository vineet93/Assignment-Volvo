resource "azurerm_kubernetes_cluster" "aks-volvo" {
  name                    = var.aks_cluster_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  dns_prefix              = "aksdns"

    default_node_pool {
    name                = var.aks_node_name
    node_count          = var.node_count
    vm_size             = var.vm_size
  }

  identity {
    type = var.identity_type
  }
}