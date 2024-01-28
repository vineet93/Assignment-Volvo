variable "location" {
    type        = string
    description = "Location of the virtual network"
}

variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "vnet_name" {
    type = string
    description = "Name of virtual network"
}

variable "addr_space" {
    type = list(string)
    description = "Address space of virtual network"
}

variable "dns_servers" {
    type = list(string)
    description = "DNS servers for virtual network"
}