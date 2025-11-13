resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  location            = each.value.location
  tags                = each.value.tags

  dynamic "subnet" {
    for_each = each.value.subnets
    
    content {
      name = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}

