variable "resource_group_name" {
  description = "The name of the resource group where the Application Security Group will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Application Security Group will be created."
  type        = string
}

variable "application_security_group_name" {
  description = "The name of the Application Security Group."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to the Application Security Group."
  type        = map(string)
  default     = {}
}