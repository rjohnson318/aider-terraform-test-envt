```hcl
module "spoke1_vnet" {
  source = "../../../modules/virtual-network"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
}

module "spoke1_subnet" {
  source = "../../../modules/subnet"

  resource_group_name = var.resource_group_name
  vnet_name           = module.spoke1_vnet.vnet_name
  subnet_name         = var.subnet_name
  address_prefix      = var.address_prefix
}

module "spoke1_nsg" {
  source = "../../../modules/network-security-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  nsg_name            = var.nsg_name
  security_rules      = var.security_rules
}

module "spoke1_asg" {
  source = "../../../modules/application-security-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  asg_name            = var.asg_name
}
```