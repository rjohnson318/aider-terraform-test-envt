variable "resource_group_name" {
  description = "The name of the resource group where the Log Analytics Workspace will be created."
  type        = string
}

variable "workspace_name" {
  description = "The name of the Log Analytics Workspace."
  type        = string
}

variable "location" {
  description = "The Azure region where the Log Analytics Workspace will be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the Log Analytics Workspace. Possible values are 'Free', 'Standard', 'Premium', or 'PerGB2018'."
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "The number of days to retain data in the Log Analytics Workspace."
  type        = number
  default     = 30
}

variable "tags" {
  description = "A map of tags to assign to the Log Analytics Workspace."
  type        = map(string)
  default     = {}
}