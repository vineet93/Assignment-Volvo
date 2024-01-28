variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "snet_name" {
    type = string
    description = "Name of subnet"
}

variable "vnet_name" {
    type = string
    description = "Name of virtual network subnet is in"
}

variable "addr_prefix" {
    type = list(string) 
    description = "Address prefix of subnet"
}