module "rg-volvo" {
  source = "./modules/resource-group/"
  resource_group_name = var.rgname 
  location            = var.location
}