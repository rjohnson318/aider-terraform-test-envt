output "il5_policy_assignment_id" {
  description = "The ID of the IL5 policy assignment."
  value       = azurerm_policy_assignment.il5.id
}

output "il5_policy_assignment_name" {
  description = "The name of the IL5 policy assignment."
  value       = azurerm_policy_assignment.il5.name
}

output "il5_policy_assignment_scope" {
  description = "The scope of the IL5 policy assignment."
  value       = azurerm_policy_assignment.il5.scope
}