variable "resource_group_name" {
  description = "The name of the resource group for the hub in zone-b."
  type        = string
}

variable "location" {
  description = "The Azure region for the hub in zone-b."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network for the hub in zone-b."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network in the hub in zone-b."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet for the hub in zone-b."
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet in the hub in zone-b."
  type        = string
}