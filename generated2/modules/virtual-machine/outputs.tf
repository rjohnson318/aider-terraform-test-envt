output "virtual_machine_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.vm.id
}

output "virtual_machine_name" {
  description = "The name of the virtual machine."
  value       = azurerm_virtual_machine.vm.name
}

output "virtual_machine_location" {
  description = "The location of the virtual machine."
  value       = azurerm_virtual_machine.vm.location
}

output "virtual_machine_resource_group_name" {
  description = "The name of the resource group the virtual machine is in."
  value       = azurerm_virtual_machine.vm.resource_group_name
}

output "virtual_machine_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "virtual_machine_public_ip" {
  description = "The public IP address of the virtual machine."
  value       = azurerm_public_ip.vm_public_ip.ip_address
}