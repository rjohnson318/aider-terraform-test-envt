variable "management_group_name" {
  description = "The name of the management group for IL5 policies."
  type        = string
}

variable "policy_definitions" {
  description = "A list of policy definition names for IL5 policies."
  type        = list(string)
  default     = []
}

variable "policy_assignments" {
  description = "A list of policy assignment names for IL5 policies."
  type        = list(string)
  default     = []
}