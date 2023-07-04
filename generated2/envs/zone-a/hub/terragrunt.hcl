include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/hub"
}

inputs = {
  resource_group_name = "zone-a-hub-rg"
  location            = "usgovvirginia"
  vnet_name           = "zone-a-hub-vnet"
  address_space       = "10.0.0.0/16"
}