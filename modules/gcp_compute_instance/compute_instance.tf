resource "google_compute_instance_group_manager" "igm" {
  base_instance_name = var.base_instance_name
  name               = var.instance_group_name

    version {
    instance_template = var.instance_template
  }
    zone               = var.zone

}

resource "google_compute_instance" "vm_instance" {
  for_each = var.vpc_names # Iterate over the VPC names

  name         = "instance-${each.key}"
  machine_type = var.machine_type

  network_interface {
    network = each.value
    access_config {}
  }

  boot_disk {
    initialize_params {
      image = var.machine_image
    }
  }

  zone = var.zone_name
}
