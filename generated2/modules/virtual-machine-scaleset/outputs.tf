output "vmss_id" {
  description = "The ID of the Virtual Machine Scale Set."
  value       = azurerm_virtual_machine_scale_set.vmss.id
}

output "vmss_name" {
  description = "The name of the Virtual Machine Scale Set."
  value       = azurerm_virtual_machine_scale_set.vmss.name
}

output "vmss_capacity" {
  description = "The number of instances in the Virtual Machine Scale Set."
  value       = azurerm_virtual_machine_scale_set.vmss.capacity
}

output "vmss_primary_network_configuration" {
  description = "The primary network configuration of the Virtual Machine Scale Set."
  value       = azurerm_virtual_machine_scale_set.vmss.virtual_machine_profile.network_profile.network_interface_configurations[0]
}

output "vmss_primary_subnet_id" {
  description = "The ID of the primary subnet associated with the Virtual Machine Scale Set."
  value       = azurerm_virtual_machine_scale_set.vmss.virtual_machine_profile.network_profile.network_interface_configurations[0].ip_configurations[0].subnet_id
}