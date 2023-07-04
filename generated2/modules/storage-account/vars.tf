variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Allowed values are Standard and Premium."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account. Allowed values are LRS, GRS, RAGRS, and ZRS."
  type        = string
  default     = "LRS"
}

variable "access_tier" {
  description = "The access tier for the storage account. Allowed values are Hot and Cool."
  type        = string
  default     = "Hot"
}

variable "tags" {
  description = "A map of tags to add to the storage account."
  type        = map(string)
  default     = {}
}