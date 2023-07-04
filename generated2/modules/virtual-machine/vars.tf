variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The username for the virtual machine administrator."
  type        = string
}

variable "admin_password" {
  description = "The password for the virtual machine administrator."
  type        = string
  sensitive   = true
}

variable "storage_account_type" {
  description = "The type of storage account to be used for the virtual machine's managed disk."
  type        = string
  default     = "Standard_LRS"
}

variable "os_disk_size_gb" {
  description = "The size of the operating system disk in gigabytes."
  type        = number
  default     = 30
}

variable "network_interface_id" {
  description = "The ID of the network interface to be attached to the virtual machine."
  type        = string
}

variable "availability_set_id" {
  description = "The ID of the availability set to which the virtual machine should be added. Leave empty if not using an availability set."
  type        = string
  default     = ""
}