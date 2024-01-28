rgname   = "rg-volvo"
location = "southcentralus"

vnet_settings = {
    "vnet-dev"={
        vnet_name = "vnet-dev-volvo"
        addr_space = ["10.0.0.0/16"]
        dns_servers = ["10.0.0.4", "10.0.0.5"]
    }
}

snet_settings = {
    "aks"={
        snet_name = "snet-dev-volvo"
        vnet_name = "vnet-dev-volvo"
        addr_prefix = ["10.0.252.0/22"]
    }
}

acr_settings = {
    "acr-dev-volvo"={
        acr_name = "acrdevvolvo"
        acr_sku  =   "Basic"
    }
}


aks_settings = {
  "aks-volvo" = {
    aks_cluster_name = "aks-dev-volvo"
    aks_node_name  = "default",
    node_count = 1,
    vm_size = "Standard_D2_v2",
    identity_type = "SystemAssigned",
  }
}
