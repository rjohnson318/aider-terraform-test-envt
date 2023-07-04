variable "resource_group_name" {
  description = "The name of the resource group for the spoke1 resources."
  type        = string
}

variable "location" {
  description = "The Azure region where the spoke1 resources will be deployed."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network for spoke1."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet for spoke1."
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group for spoke1."
  type        = string
}

variable "application_security_group_name" {
  description = "The name of the application security group for spoke1."
  type        = string
}

variable "virtual_machine_name" {
  description = "The name of the virtual machine for spoke1."
  type        = string
}

variable "virtual_machine_size" {
  description = "The size of the virtual machine for spoke1."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account for spoke1."
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the log analytics workspace for spoke1."
  type        = string
}