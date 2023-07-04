output "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.workspace.id
}

output "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.workspace.name
}

output "log_analytics_workspace_primary_shared_key" {
  description = "The primary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.workspace.primary_shared_key
}

output "log_analytics_workspace_secondary_shared_key" {
  description = "The secondary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.workspace.secondary_shared_key
}