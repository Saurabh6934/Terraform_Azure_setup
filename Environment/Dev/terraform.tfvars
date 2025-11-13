rgs = {
  rg1 = {
    name     = "dev_rg"
    location = "East US"
  }
}

vnets = {
  vnet1 = {
    name                = "frontend_vnet"
    resource_group_name = "dev_rg"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    tags = {
      environment = "dev"
    }
    subnets = [
      {
        name             = "frontend_subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend_subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
    ]
  }
}

key_vaults = {
  kv1 = {
    kv_name  = "dev-keyvault01"
    rg_name  = "dev_rg"
    location = "East US"
  }
}