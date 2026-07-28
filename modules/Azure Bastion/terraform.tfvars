bastion = {
  bastion1 = {
    name                = "dev-bastion"
    location            = "central india"
    resource_group_name = "rg-dev"
    ip_config_name      = "bastion-config"
    subnet_name         = "AzureBastionSubnet"
    vnet_name           = "vnet-dev"
    pip_name            = "dev-bastion-pip"

  }
}
