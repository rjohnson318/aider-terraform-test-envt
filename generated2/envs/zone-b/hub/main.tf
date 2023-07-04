provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "zone-b-hub-rg"
}

resource "azurerm_resource_group" "hub" {
  name     = local.resource_group_name
  location = "usgovvirginia"
}

module "virtual_network" {
  source              = "../../../modules/virtual-network"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  vnet_name           = "zone-b-hub-vnet"
  address_space       = ["10.1.0.0/16"]
}

module "subnet" {
  source              = "../../../modules/subnet"
  resource_group_name = azurerm_resource_group.hub.name
  vnet_name           = module.virtual_network.vnet_name
  subnet_name         = "zone-b-hub-subnet"
  address_prefixes    = ["10.1.1.0/24"]
}

module "network_security_group" {
  source              = "../../../modules/network-security-group"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  nsg_name            = "zone-b-hub-nsg"
}

module "application_security_group" {
  source              = "../../../modules/application-security-group"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  asg_name            = "zone-b-hub-asg"
}

module "log_analytics_workspace" {
  source              = "../../../modules/log-analytics-workspace"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  workspace_name      = "zone-b-hub-law"
}

module "storage_account" {
  source              = "../../../modules/storage-account"
  resource_group_name = azurerm_resource_group.hub.name
  location            = azurerm_resource_group.hub.location
  account_name        = "zonebhubstorage"
  account_tier        = "Standard"
  account_replication_type = "LRS"
}