variable "vnets" {
  type = map(object({
    name           = string
    resource_group_name = string
    address_space  = list(string)
    location       = string
    tags           = optional(map(string))
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    })),[])
  }))
}

