resource "google_compute_firewall" "default" {
  for_each = var.vpc_names

  name    = "firewall-${replace(each.key, "_", "-")}"
  network = each.value

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"] # Allow SSH, HTTP, and HTTPS (Can be added in variables.tf)
  }

  source_ranges = ["0.0.0.0/0"] # Allow traffic from anywhere


}
