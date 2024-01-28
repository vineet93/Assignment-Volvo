variable "location" {
    type        = string
    description = "Location of the Linux virtual machine"
}

variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "aks_cluster_name" {
    type        = string
    description = "Name of the aks cluster"
}

variable "aks_node_name" {
    type        = string
    description = "Name of the AKS Node"
}

variable "node_count" {
    type        = number
    description = "Count of the AKS Node"
}

variable "vm_size" {
    type        = string
    description = "VM size for the Node"
}

variable "identity_type" {
    type        = string
    description = "Identity type for the AKS cluster"
}