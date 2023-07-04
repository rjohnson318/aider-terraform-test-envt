include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/spoke2"
}

inputs = {
  resource_group_name = "zone-b-spoke2-rg"
  location            = "usgovvirginia"
}