variable "resource_group_name" {
  description = "The name of the resource group for the hub resources."
  type        = string
}

variable "location" {
  description = "The Azure region where the hub resources will be deployed."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network for the hub resources."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet for the hub resources."
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group for the hub resources."
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace for the hub resources."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account for the hub resources."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {}
}