module "resource_groups" {
  source = "../../Modules/Resource_group"
  rgs    = var.rgs
}

module "virtual_network_subnets" {
  depends_on = [module.resource_groups]
  source = "../../Modules/Vnet"
  vnets  = var.vnets
}

module "Key_vault" {
  depends_on = [module.resource_groups]
  source     = "../../Modules/Key_Vault"
  key_vaults = var.key_vaults
}

module "public_ip" {
  depends_on = [module.resource_groups]
  source     = "../../Modules/Public_Ip"
  public_ips = var.public_ips
}