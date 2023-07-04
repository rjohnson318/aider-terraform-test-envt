variable "name" {
  description = "The name of the public IP."
  type        = string
}

variable "location" {
  description = "The location/region where the public IP is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the public IP."
  type        = string
}
