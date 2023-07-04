output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.main.id
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_location" {
  description = "The location of the virtual network"
  value       = azurerm_virtual_network.main.location
}

output "virtual_network_address_space" {
  description = "The address space of the virtual network"
  value       = azurerm_virtual_network.main.address_space
}

output "virtual_network_subnets" {
  description = "The subnets within the virtual network"
  value       = azurerm_virtual_network.main.subnet
}

output "virtual_network_tags" {
  description = "The tags applied to the virtual network"
  value       = azurerm_virtual_network.main.tags
}