# Create VPCs using the map values
resource "google_compute_network" "vpc" {
  for_each = var.vpc_network

  name                    = each.value # Use the values from the map for the VPC names
  auto_create_subnetworks = true       # Enable auto subnetwork creation

  description = "VPC created by Terraform"
}
