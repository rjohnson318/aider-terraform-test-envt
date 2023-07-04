include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/spoke1"
}

inputs = {
  resource_group_name = "zone-b-spoke1-rg"
  location            = "usgovvirginia"
}