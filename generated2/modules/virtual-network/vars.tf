variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual network will be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "dns_servers" {
  description = "The list of DNS servers for the virtual network."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to add to the virtual network resource."
  type        = map(string)
  default     = {}
}