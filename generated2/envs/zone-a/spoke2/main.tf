provider "azurerm" {
  features {}
}

locals {
  spoke2_rg_name = "spoke2-zone-a-rg"
}

module "spoke2_vnet" {
  source              = "../../modules/virtual-network"
  resource_group_name = local.spoke2_rg_name
  vnet_name           = "spoke2-zone-a-vnet"
  address_space       = ["10.2.0.0/16"]
}

module "spoke2_subnet" {
  source              = "../../modules/subnet"
  resource_group_name = local.spoke2_rg_name
  vnet_name           = module.spoke2_vnet.vnet_name
  subnet_name         = "spoke2-zone-a-subnet"
  address_prefixes    = ["10.2.1.0/24"]
}

module "spoke2_nsg" {
  source              = "../../modules/network-security-group"
  resource_group_name = local.spoke2_rg_name
  nsg_name            = "spoke2-zone-a-nsg"
}

module "spoke2_subnet_nsg_association" {
  source                     = "../../modules/subnet-nsg-association"
  subnet_id                  = module.spoke2_subnet.subnet_id
  network_security_group_id  = module.spoke2_nsg.nsg_id
}