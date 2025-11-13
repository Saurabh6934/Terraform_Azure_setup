module "resource_groups" {
  source = "../../Modules/Resource_group"
  rgs = var.rgs
}

module "virtual_network_subnets" {
  source = "../../Modules/Vnet"
  vnets = var.vnets
}