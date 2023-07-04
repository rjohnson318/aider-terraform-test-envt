variable "runbook_name" {
  description = "The name of the runbook"
  type        = string
}

variable "runbook_description" {
  description = "A description of the runbook"
  type        = string
}

variable "runbook_type" {
  description = "The type of the runbook (e.g., PowerShell, Python, etc.)"
  type        = string
}

variable "runbook_content" {
  description = "The content of the runbook"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the runbook should be created"
  type        = string
}

variable "automation_account_name" {
  description = "The name of the automation account where the runbook should be created"
  type        = string
}