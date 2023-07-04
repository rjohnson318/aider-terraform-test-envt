output "hub_virtual_network_id" {
  description = "The ID of the hub virtual network"
  value       = module.hub_virtual_network.virtual_network_id
}

output "hub_virtual_network_name" {
  description = "The name of the hub virtual network"
  value       = module.hub_virtual_network.virtual_network_name
}

output "hub_subnets" {
  description = "The subnets in the hub virtual network"
  value       = module.hub_virtual_network.subnets
}

output "hub_network_security_group_ids" {
  description = "The network security group IDs associated with the hub virtual network"
  value       = module.hub_virtual_network.network_security_group_ids
}