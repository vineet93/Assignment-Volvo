variable "location" {
    type        = string
    description = "Location of the Linux virtual machine"
}

variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "acr_name" {
    type        = string
    description = "Name of the Container registry"
}

variable "acr_sku" {
    type        = string
    description = "SKU Name of the ACR"
}