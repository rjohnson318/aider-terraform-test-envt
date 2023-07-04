include {
  path = find_in_parent_folders()
}

remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "my-resource-group"
    storage_account_name = "my-storage-account"
    container_name       = "terraform-state"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}

inputs = {
  resource_prefix = "my-prefix"
}