variable "name" {
  description = "The name of the private endpoint."
  type        = string
}

variable "location" {
  description = "The location/region where the private endpoint is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the private endpoint."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the Subnet in which to create the private endpoint."
  type        = string
}

variable "private_connection_resource_id" {
  description = "The resource id of the private link service."
  type        = string
}

variable "subresource_name" {
  description = "The subresource name which the private endpoint is able to connect to."
  type        = string
}
