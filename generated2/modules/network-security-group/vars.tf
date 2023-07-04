variable "resource_group_name" {
  description = "The name of the resource group where the network security group will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the network security group will be created."
  type        = string
}

variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

variable "security_rules" {
  description = "A list of security rules to be applied to the network security group."
  type        = list(object({
    name                        = string
    priority                    = number
    direction                   = string
    access                      = string
    protocol                    = string
    source_port_range           = string
    destination_port_range      = string
    source_address_prefix       = string
    destination_address_prefix  = string
  }))
  default     = []
}