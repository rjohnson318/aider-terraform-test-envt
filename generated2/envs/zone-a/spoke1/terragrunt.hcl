include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/spoke1"
}

inputs = {
  resource_group_name = "zone-a-spoke1-rg"
  location            = "usgovvirginia"
}