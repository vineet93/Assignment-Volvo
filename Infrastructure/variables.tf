variable "location" {
  type        = string
  description = "The primary location of the Azure Subscription and resource group."
  default     = "southcentralus"
}

variable "rgname" {
  description = "Name of resource group"
}

variable "vnet_settings" {
 type = map(object({
    vnet_name    = string
    addr_space   = list(string) 
    dns_servers  = list(string) 
  }))
  description = "Details on virtual network(s)"
}

variable "snet_settings" {
  type = map(object({
    snet_name   = string
    vnet_name   = string
    addr_prefix = list(string)  
  }))
  description = "Details on subnet(s)"
}

variable "acr_settings" {
  type = map(object({
    acr_name  = string
    acr_sku   = string
  }))
  description = "Details on ACR settings"
}

variable "aks_settings" {
  type = map(object({
    aks_cluster_name        = string
    aks_node_name           = string
    node_count              = number
    vm_size                 = string
    identity_type           = string
  }))
  description = "Details on AKS settings"
}