# The module is kept for future enhancements to create SA using terraform resources
# For time being we are using pre-generated service account json

# Provider Configuration
provider "google" {
  credentials = file(var.sa_json_key_path)
  project     = var.gcp_project_id
  region      = var.gcp_region
}
