include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/hub"
}

inputs = {
  resource_group_name = "zone-b-hub-rg"
  location            = "usgovvirginia"
  tags = {
    environment = "zone-b"
    component   = "hub"
  }
}