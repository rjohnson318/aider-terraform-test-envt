variable "management_group_name" {
  description = "The name of the management group for IL4 policies."
  type        = string
}

variable "policy_definitions" {
  description = "A list of policy definition IDs to be assigned to the management group."
  type        = list(string)
  default     = []
}

variable "policy_assignments" {
  description = "A map of policy assignment names and their corresponding policy definition IDs."
  type        = map(string)
  default     = {}
}

variable "policy_assignment_parameters" {
  description = "A map of policy assignment names and their corresponding parameter files."
  type        = map(string)
  default     = {}
}