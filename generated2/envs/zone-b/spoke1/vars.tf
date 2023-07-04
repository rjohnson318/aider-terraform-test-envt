variable "resource_group_name" {
  description = "The name of the resource group for the spoke1 resources in zone-b."
  type        = string
}

variable "location" {
  description = "The Azure region for the spoke1 resources in zone-b."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network for spoke1 in zone-b."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet for spoke1 in zone-b."
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group for spoke1 in zone-b."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the spoke1 resources in zone-b."
  type        = map(string)
  default     = {}
}