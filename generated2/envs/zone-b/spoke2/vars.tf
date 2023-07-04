variable "resource_group_name" {
  description = "The name of the resource group for the spoke2 resources in zone-b."
  type        = string
}

variable "location" {
  description = "The Azure region for the spoke2 resources in zone-b."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network for the spoke2 resources in zone-b."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet for the spoke2 resources in zone-b."
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group for the spoke2 resources in zone-b."
  type        = string
}

variable "application_security_group_name" {
  description = "The name of the application security group for the spoke2 resources in zone-b."
  type        = string
}