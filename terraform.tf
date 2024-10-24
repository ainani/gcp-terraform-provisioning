# terraform.tf
terraform {
  required_version = ">= 1.0.0"

  backend "local" {
    path = "state/terraform.tfstate" # Create this state directory
  }


}
