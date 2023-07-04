output "spoke2_virtual_network_name" {
  description = "The name of the virtual network in spoke2"
  value       = module.spoke2_virtual_network.name
}

output "spoke2_subnets" {
  description = "The subnets in spoke2"
  value       = module.spoke2_subnets.subnets
}

output "spoke2_network_security_groups" {
  description = "The network security groups in spoke2"
  value       = module.spoke2_network_security_groups.nsgs
}

output "spoke2_application_security_groups" {
  description = "The application security groups in spoke2"
  value       = module.spoke2_application_security_groups.asgs
}