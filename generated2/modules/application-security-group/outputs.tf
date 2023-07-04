output "application_security_group_id" {
  description = "The ID of the Application Security Group"
  value       = azurerm_application_security_group.example.id
}

output "application_security_group_name" {
  description = "The name of the Application Security Group"
  value       = azurerm_application_security_group.example.name
}

output "application_security_group_location" {
  description = "The location of the Application Security Group"
  value       = azurerm_application_security_group.example.location
}

output "application_security_group_resource_group_name" {
  description = "The resource group name of the Application Security Group"
  value       = azurerm_application_security_group.example.resource_group_name
}

output "application_security_group_tags" {
  description = "The tags of the Application Security Group"
  value       = azurerm_application_security_group.example.tags
}