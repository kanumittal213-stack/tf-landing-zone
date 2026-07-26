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
