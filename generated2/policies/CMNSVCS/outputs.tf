output "cmnsvcs_policy_assignment_id" {
  description = "The ID of the policy assignment for the CMNSVCS management group."
  value       = azurerm_policy_assignment.cmnsvcs.id
}

output "cmnsvcs_policy_assignment_name" {
  description = "The name of the policy assignment for the CMNSVCS management group."
  value       = azurerm_policy_assignment.cmnsvcs.name
}