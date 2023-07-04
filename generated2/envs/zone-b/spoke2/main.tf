provider "azurerm" {
  features {}
}

locals {
  spoke2_rg_name = "zone-b-spoke2-rg"
}

resource "azurerm_resource_group" "spoke2" {
  name     = local.spoke2_rg_name
  location = "usgovvirginia"
}

module "spoke2_vnet" {
  source              = "../../../modules/virtual-network"
  resource_group_name = azurerm_resource_group.spoke2.name
  location            = azurerm_resource_group.spoke2.location
  vnet_name           = "spoke2-vnet"
  address_space       = ["10.2.0.0/16"]
}

module "spoke2_subnet" {
  source              = "../../../modules/subnet"
  resource_group_name = azurerm_resource_group.spoke2.name
  vnet_name           = module.spoke2_vnet.virtual_network_name
  subnet_name         = "spoke2-subnet"
  address_prefixes    = ["10.2.1.0/24"]
}

module "spoke2_nsg" {
  source              = "../../../modules/network-security-group"
  resource_group_name = azurerm_resource_group.spoke2.name
  location            = azurerm_resource_group.spoke2.location
  nsg_name            = "spoke2-nsg"
}

module "spoke2_subnet_nsg_association" {
  source                   = "../../../modules/subnet-nsg-association"
  subnet_id                = module.spoke2_subnet.subnet_id
  network_security_group_id = module.spoke2_nsg.network_security_group_id
}