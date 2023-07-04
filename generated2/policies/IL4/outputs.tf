output "il4_policy_id" {
  description = "The ID of the IL4 policy assignment."
  value       = azurerm_policy_assignment.il4_policy.id
}

output "il4_policy_name" {
  description = "The name of the IL4 policy assignment."
  value       = azurerm_policy_assignment.il4_policy.name
}

output "il4_policy_scope" {
  description = "The scope of the IL4 policy assignment."
  value       = azurerm_policy_assignment.il4_policy.scope
}