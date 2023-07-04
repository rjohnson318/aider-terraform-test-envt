include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/spoke2"
}

inputs = {
  environment = "production"
}