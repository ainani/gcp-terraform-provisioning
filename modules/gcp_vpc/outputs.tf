# Output for the created VPC names
output "vpc_names" {
  value       = { for key, vpc in google_compute_network.vpc : key => vpc.name }
  description = "Map of VPC names created in this module"
}
