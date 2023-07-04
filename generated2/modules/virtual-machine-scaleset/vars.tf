variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine scale set will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual machine scale set will be created."
  type        = string
}

variable "vmss_name" {
  description = "The name of the virtual machine scale set."
  type        = string
}

variable "instance_count" {
  description = "The number of instances in the virtual machine scale set."
  type        = number
}

variable "sku" {
  description = "The SKU of the virtual machines in the scale set."
  type        = string
}

variable "admin_username" {
  description = "The username for the administrator account on the virtual machines in the scale set."
  type        = string
}

variable "admin_password" {
  description = "The password for the administrator account on the virtual machines in the scale set."
  type        = string
  sensitive   = true
}

variable "network_security_group_id" {
  description = "The ID of the network security group to associate with the virtual machine scale set."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the virtual machine scale set."
  type        = string
}

variable "storage_account_type" {
  description = "The type of storage account to use for the virtual machine scale set."
  type        = string
}

variable "os_disk_size_gb" {
  description = "The size of the operating system disk in gigabytes."
  type        = number
}

variable "image_publisher" {
  description = "The publisher of the image used for the virtual machines in the scale set."
  type        = string
}

variable "image_offer" {
  description = "The offer of the image used for the virtual machines in the scale set."
  type        = string
}

variable "image_sku" {
  description = "The SKU of the image used for the virtual machines in the scale set."
  type        = string
}

variable "image_version" {
  description = "The version of the image used for the virtual machines in the scale set."
  type        = string
}