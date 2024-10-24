resource "google_compute_instance_template" "default" {
  name         = var.name
  machine_type = var.machine_type

  disk {
    source_image = var.boot_disk_image
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
}
