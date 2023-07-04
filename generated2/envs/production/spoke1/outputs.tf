output "spoke1_virtual_network_name" {
  value       = module.spoke1_virtual_network.name
  description = "The name of the virtual network in the spoke1 component."
}

output "spoke1_subnets" {
  value       = module.spoke1_subnets.subnet_ids
  description = "The subnet IDs of the subnets in the spoke1 component."
}

output "spoke1_network_security_group_ids" {
  value       = module.spoke1_network_security_groups.nsg_ids
  description = "The network security group IDs in the spoke1 component."
}

output "spoke1_application_security_group_ids" {
  value       = module.spoke1_application_security_groups.asg_ids
  description = "The application security group IDs in the spoke1 component."
}