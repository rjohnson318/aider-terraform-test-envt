variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "name_prefix" {
  description = "A prefix for the names of the resources that will be created."
  type        = string
}

variable "name_suffix" {
  description = "A suffix for the names of the resources that will be created."
  type        = string
}