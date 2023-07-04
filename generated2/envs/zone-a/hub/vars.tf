variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
}

variable "hub_vnet_name" {
  description = "The name of the hub virtual network."
  type        = string
}

variable "hub_vnet_address_space" {
  description = "The address space for the hub virtual network."
  type        = list(string)
}

variable "hub_subnet_name" {
  description = "The name of the hub subnet."
  type        = string
}

variable "hub_subnet_address_prefix" {
  description = "The address prefix for the hub subnet."
  type        = string
}