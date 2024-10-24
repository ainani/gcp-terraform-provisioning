
module "gcp_sa" {
  source           = "./modules/gcp_sa"
  sa_json_key_path = var.sa_json_key_path
  gcp_project_id   = var.gcp_project_id
  gcp_region       = var.gcp_region
}

# Call the gcp_vpc module to create the VPCs
module "vpc" {
  source = "./modules/gcp_vpc"
  vpc_network = {
    vpc_1 = "vpc-1"
    vpc_2 = "vpc-2"
  }
}

# Call the Instance template module
module "instance_template" {
  source    = "./modules/gcp_instance_template"

  boot_disk_image = "debian-cloud/debian-11"
  machine_type    = "e2-medium"
  name            = "instance-1"
  network         = "default"
  zone            = "us-central1-a"
}

# Call the Compute Instance module and pass the VPC names
module "compute_instances" {
  source    = "./modules/gcp_compute_instance"
  vpc_names = module.vpc.vpc_names
  instance_group_name = "IG-1"
  instance_template = module.instance_template.instance_template_name
  zone = "us-central1-a"
}

# Call the Firewall module and pass the VPC names
module "firewall" {
  source    = "./modules/gcp_sg_firewalls"
  vpc_names = module.vpc.vpc_names
}

# Call the Load Balancer module and pass the instance group link
module "load_balancer" {
  source              = "./modules/gcp_lb"
  instance_group_link = module.compute_instances.instance_group_self_link # Assuming the instance group self link is available from the compute instances module
}