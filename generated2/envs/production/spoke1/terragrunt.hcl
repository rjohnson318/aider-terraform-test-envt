include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/spoke1"
}

inputs = {
  environment = "production"
}