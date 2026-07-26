variable "pip" {}

resource "azurerm_public_ip" "pips" {
    for_each = var.pip
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = "Static"
}