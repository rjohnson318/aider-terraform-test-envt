output "network_security_group_id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}

output "network_security_group_name" {
  description = "The name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "network_security_group_rules" {
  description = "The security rules of the Network Security Group"
  value       = azurerm_network_security_group.nsg.security_rule
}