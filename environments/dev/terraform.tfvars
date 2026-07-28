rgs = {
  rg1 = {
    name     = "rg-dev"
    location = "West Europe"
  }
    rg2 = {
    name     = "rg-test"
    location = "West Europe"
  }
}
vnets = {
  vnet1 = {
    name          = "vnet-dev"
    location      = "West Europe"
    rg_name       = "rg-dev"
    address_space = ["10.68.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    rg_name              = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.68.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    rg_name              = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.68.2.0/24"]
  }
}

pip = {

  pip1 = {
    name     = "dev-fe-pip"
    rg_name  = "rg-dev"
    location = "West Europe"
  }
  pip2 = {
    name     = "dev-be-pip"
    rg_name  = "rg-dev"
    location = "West Europe"
  }
}


nic = {
  nic1 = {
    name           = "fe-nic-dev"
    location       = "West Europe"
    rg_name        = "rg-dev"
    ip_config_name = "testconfig"
    subnet_name    = "frontend-subnet"
    vnet_name      = "vnet-dev"
    pip_name       = "dev-fe-pip"
  }
  nic2 = {
    name           = "be-nic-dev"
    location       = "West Europe"
    rg_name        = "rg-dev"
    ip_config_name = "testconfig"
    subnet_name    = "backend-subnet"
    vnet_name      = "vnet-dev"
    pip_name       = "dev-be-pip"
  }
}

vms = {
  vm1 = {
    vm_name        = "fe-dev-vm1"
    location       = "West Europe"
    rg_name        = "rg-dev"
    vm_size        = "Standard_D2ls_v5"
    admin_username = "adminuser"
    admin_pswd     = "ghp_abcdefghijklmnopqrstuvwxyz123456"
    nic_name       = "fe-nic-dev"

  }
  vm2 = {
    vm_name        = "be-dev-vm1"
    location       = "West Europe"
    rg_name        = "rg-dev"
    vm_size        = "Standard_D2ls_v5"
    admin_username = "adminuser"
    admin_pswd     = "ghp_abcdefghijklmnopqrstuvwxyz123456"
    nic_name       = "be-nic-dev"
  }

}

