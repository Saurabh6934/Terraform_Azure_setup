module "resource_groups" {
  source = "../../Modules/Resource_group"
  rgs    = var.rgs
}

module "virtual_network_subnets" {
  source = "../../Modules/Vnet"
  vnets  = var.vnets
}

module "Key_vault" {
  source     = "../../Modules/Key_Vault"
  key_vaults = var.key_vaults
}