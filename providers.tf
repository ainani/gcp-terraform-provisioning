# providers.tf
terraform {
  required_providers {
  }
}






provider "google" {
  credentials = file(var.sa_json_key_path)
  project     = var.gcp_project_id
  region      = var.gcp_region
}
