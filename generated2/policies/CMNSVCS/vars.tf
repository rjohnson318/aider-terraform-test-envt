variable "management_group_name" {
  description = "The name of the management group for the CMNSVCS policy."
  type        = string
}

variable "policy_definitions" {
  description = "A list of policy definition names to be assigned to the management group."
  type        = list(string)
  default     = []
}

variable "policy_assignments" {
  description = "A list of policy assignment names to be assigned to the management group."
  type        = list(string)
  default     = []
}