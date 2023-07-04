variable "resource_group_name" {
  description = "The name of the resource group where the subnet will be created."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network where the subnet will be created."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet to be created."
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = string
}

variable "network_security_group_id" {
  description = "The ID of the network security group to associate with the subnet."
  type        = string
  default     = null
}

variable "route_table_id" {
  description = "The ID of the route table to associate with the subnet."
  type        = string
  default     = null
}

variable "service_endpoints" {
  description = "A list of service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}