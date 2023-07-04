provider "azurerm" {
  features {}
}

locals {
  spoke2_rg_name = "spoke2-production-rg"
}

module "spoke2_vnet" {
  source              = "../../../modules/virtual-network"
  resource_group_name = local.spoke2_rg_name
  vnet_name           = "spoke2-production-vnet"
  address_space       = ["10.2.0.0/16"]
}

module "spoke2_subnet" {
  source              = "../../../modules/subnet"
  resource_group_name = local.spoke2_rg_name
  vnet_name           = module.spoke2_vnet.vnet_name
  subnet_name         = "spoke2-production-subnet"
  address_prefixes    = ["10.2.1.0/24"]
}

module "spoke2_nsg" {
  source              = "../../../modules/network-security-group"
  resource_group_name = local.spoke2_rg_name
  nsg_name            = "spoke2-production-nsg"
}

module "spoke2_asg" {
  source              = "../../../modules/application-security-group"
  resource_group_name = local.spoke2_rg_name
  asg_name            = "spoke2-production-asg"
}

module "spoke2_vm" {
  source              = "../../../modules/virtual-machine"
  resource_group_name = local.spoke2_rg_name
  vm_name             = "spoke2-production-vm"
  subnet_id           = module.spoke2_subnet.subnet_id
  nsg_id              = module.spoke2_nsg.nsg_id
  asg_id              = module.spoke2_asg.asg_id
}