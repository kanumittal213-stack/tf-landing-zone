module "rgs" {
  source = "../../modules/Resource Group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.rgs]
  source     = "../../modules/Virtual Network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../modules/Subnet"
  subnets    = var.subnets
}

module "pip" {
  depends_on = [module.rgs]
  source     = "../../modules/Public IP Address"
  pip        = var.pip
}


module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../../modules/NIC"
  nic        = var.nic
}

module "vms" {
  depends_on = [module.nic]
  source     = "../../modules/Virtual Machine"
  vms        = var.vms
}
