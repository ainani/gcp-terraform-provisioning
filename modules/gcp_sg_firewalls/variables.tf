# Accept VPC names as a variable
variable "vpc_names" {
  type        = map(string)
  description = "Map of VPC names for which to create firewall rules"
}
