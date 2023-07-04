output "spoke1_virtual_network_name" {
  value = module.spoke1_virtual_network.name
  description = "The name of the virtual network in spoke1."
}

output "spoke1_virtual_network_id" {
  value = module.spoke1_virtual_network.id
  description = "The ID of the virtual network in spoke1."
}

output "spoke1_subnets" {
  value = module.spoke1_subnets
  description = "The subnets in spoke1."
}

output "spoke1_network_security_group_ids" {
  value = module.spoke1_network_security_groups.ids
  description = "The network security group IDs in spoke1."
}

output "spoke1_application_security_group_ids" {
  value = module.spoke1_application_security_groups.ids
  description = "The application security group IDs in spoke1."
}