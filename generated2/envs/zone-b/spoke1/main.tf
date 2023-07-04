provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "zone-b-spoke1-rg"
}

module "virtual_network" {
  source              = "../../../modules/virtual-network"
  resource_group_name = local.resource_group_name
  location            = "usgovvirginia"
  vnet_name           = "zone-b-spoke1-vnet"
  address_space       = ["10.2.0.0/16"]
}

module "subnet" {
  source              = "../../../modules/subnet"
  resource_group_name = local.resource_group_name
  vnet_name           = module.virtual_network.vnet_name
  subnet_name         = "zone-b-spoke1-subnet"
  address_prefixes    = ["10.2.1.0/24"]
}

module "network_security_group" {
  source              = "../../../modules/network-security-group"
  resource_group_name = local.resource_group_name
  location            = "usgovvirginia"
  nsg_name            = "zone-b-spoke1-nsg"
}

module "application_security_group" {
  source              = "../../../modules/application-security-group"
  resource_group_name = local.resource_group_name
  location            = "usgovvirginia"
  asg_name            = "zone-b-spoke1-asg"
}

module "virtual_machine" {
  source              = "../../../modules/virtual-machine"
  resource_group_name = local.resource_group_name
  location            = "usgovvirginia"
  vm_name             = "zone-b-spoke1-vm"
  subnet_id           = module.subnet.subnet_id
  nsg_id              = module.network_security_group.nsg_id
  asg_id              = module.application_security_group.asg_id
}resource "azurerm_resource_group" "rg_02" {
  name     = "zone-b-spoke1-rg-02"
  location = var.location
}
