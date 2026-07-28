rgs = {
  rg1 = {
    name     = "rg-prod"
    location = "central india"
  }
}
vnets = {
  vnet1 = {
    name           = "vnet_prod"
    location       = "central India"
    resource_group = "rg-prod"
    address_space  = "[10.69.0.0/16]"
  }
}
subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet_prod"
    address_prefixes     = ["10.69.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet_prod"
    address_prefixes     = ["10.69.2.0/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet_prod"
    address_prefixes     = ["10.69.3.0/24"]
  }
}
