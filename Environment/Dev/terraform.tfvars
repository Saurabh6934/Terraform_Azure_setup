# Resource group
rgs = {
  rg1 = {
    name     = "dev_skp_rg"
    location = "East US"
  }
}

# Virtual Network and Subnets
vnets = {
  vnet1 = {
    name                = "frontend_vnet"
    resource_group_name = "dev_skp_rg"
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
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

# key vaults
key_vaults = {
  kv1 = {
    kv_name  = "dev-keyvault01"
    rg_name  = "dev_skp_rg"
    location = "East US"
  }
}

# Public IP
public_ips = {
  app1 = {
    name                = "pip-chintu"
    resource_group_name = "dev_skp_rg"
    location            = "eastus"
    allocation_method   = "Static"
    zones               = ["1", "2"]
    domain_name_label   = "app1-dns"
    tags = {
      app = "frontend"
      env = "prod"
    }
  }

  app2 = {
    name                = "pip-dhondhu"
    resource_group_name = "dev_skp_rg"
    location            = "westeurope"
    allocation_method   = "Dynamic"
    sku                 = "Basic"
    ip_version          = "IPv4"
    tags = {
      app = "backend"
      env = "staging"
    }
  }
}




