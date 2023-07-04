provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "zone-a-hub-rg"
}

resource "azurerm_resource_group" "hub" {
  name     = local.resource_group_name
  location = "usgovvirginia"
}

module "virtual_network" {
  source              = "../../modules/virtual-network"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  vnet_name           = "zone-a-hub-vnet"
  address_space       = ["10.0.0.0/16"]
}

module "subnet" {
  source              = "../../modules/subnet"
  resource_group_name = azurerm_resource_group.hub.name
  vnet_name           = module.virtual_network.vnet_name
  subnet_name         = "zone-a-hub-subnet"
  address_prefixes    = ["10.0.1.0/24"]
}

module "network_security_group" {
  source              = "../../modules/network-security-group"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  nsg_name            = "zone-a-hub-nsg"
}

module "nsg_association" {
  source              = "../../modules/nsg-subnet-association"
  subnet_id           = module.subnet.subnet_id
  network_security_group_id = module.network_security_group.nsg_id
}