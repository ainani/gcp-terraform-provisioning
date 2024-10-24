# Ouput of terraform plan  

Couldn't execute terraform apply, because GCP was complaining about billing

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.compute_instances.google_compute_instance.vm_instance["vpc_1"] will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "instance-vpc_1"
      + project              = "test-71953-439609"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "us-central1-a"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "debian-cloud/debian-11"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "vpc-1"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # module.compute_instances.google_compute_instance.vm_instance["vpc_2"] will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "instance-vpc_2"
      + project              = "test-71953-439609"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "us-central1-a"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "debian-cloud/debian-11"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "vpc-2"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # module.compute_instances.google_compute_instance_group_manager.igm will be created
  + resource "google_compute_instance_group_manager" "igm" {
      + base_instance_name             = "my-instance"
      + creation_timestamp             = (known after apply)
      + fingerprint                    = (known after apply)
      + id                             = (known after apply)
      + instance_group                 = (known after apply)
      + list_managed_instances_results = "PAGELESS"
      + name                           = "IG-1"
      + operation                      = (known after apply)
      + project                        = "test-71953-439609"
      + self_link                      = (known after apply)
      + status                         = (known after apply)
      + target_size                    = (known after apply)
      + wait_for_instances             = false
      + wait_for_instances_status      = "STABLE"
      + zone                           = "us-central1-a"

      + instance_lifecycle_policy (known after apply)

      + update_policy (known after apply)

      + version {
          + instance_template = (known after apply)
        }
    }

  # module.firewall.google_compute_firewall.default["vpc_1"] will be created
  + resource "google_compute_firewall" "default" {
      + creation_timestamp = (known after apply)
      + destination_ranges = (known after apply)
      + direction          = (known after apply)
      + enable_logging     = (known after apply)
      + id                 = (known after apply)
      + name               = "firewall-vpc-1"
      + network            = "vpc-1"
      + priority           = 1000
      + project            = "test-71953-439609"
      + self_link          = (known after apply)
      + source_ranges      = [
          + "0.0.0.0/0",
        ]

      + allow {
          + ports    = [
              + "22",
              + "80",
              + "443",
            ]
          + protocol = "tcp"
        }
    }

  # module.firewall.google_compute_firewall.default["vpc_2"] will be created
  + resource "google_compute_firewall" "default" {
      + creation_timestamp = (known after apply)
      + destination_ranges = (known after apply)
      + direction          = (known after apply)
      + enable_logging     = (known after apply)
      + id                 = (known after apply)
      + name               = "firewall-vpc-2"
      + network            = "vpc-2"
      + priority           = 1000
      + project            = "test-71953-439609"
      + self_link          = (known after apply)
      + source_ranges      = [
          + "0.0.0.0/0",
        ]

      + allow {
          + ports    = [
              + "22",
              + "80",
              + "443",
            ]
          + protocol = "tcp"
        }
    }

  # module.instance_template.google_compute_instance_template.default will be created
  + resource "google_compute_instance_template" "default" {
      + can_ip_forward       = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + machine_type         = "e2-medium"
      + metadata_fingerprint = (known after apply)
      + name                 = "instance-1"
      + name_prefix          = (known after apply)
      + project              = "test-71953-439609"
      + region               = (known after apply)
      + self_link            = (known after apply)
      + self_link_unique     = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }

      + confidential_instance_config (known after apply)

      + disk {
          + auto_delete            = true
          + boot                   = (known after apply)
          + device_name            = (known after apply)
          + disk_size_gb           = (known after apply)
          + disk_type              = (known after apply)
          + interface              = (known after apply)
          + mode                   = (known after apply)
          + provisioned_iops       = (known after apply)
          + provisioned_throughput = (known after apply)
          + source_image           = "debian-cloud/debian-11"
          + type                   = (known after apply)
        }

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip                 = (known after apply)
              + network_tier           = (known after apply)
              + public_ptr_domain_name = (known after apply)
            }
        }

      + scheduling (known after apply)
    }

  # module.load_balancer.google_compute_backend_service.default will be created
  + resource "google_compute_backend_service" "default" {
      + connection_draining_timeout_sec = 300
      + creation_timestamp              = (known after apply)
      + fingerprint                     = (known after apply)
      + generated_id                    = (known after apply)
      + health_checks                   = (known after apply)
      + id                              = (known after apply)
      + load_balancing_scheme           = "EXTERNAL"
      + name                            = "backend-service"
      + port_name                       = "http"
      + project                         = "test-71953-439609"
      + protocol                        = "HTTP"
      + self_link                       = (known after apply)
      + session_affinity                = (known after apply)
      + timeout_sec                     = (known after apply)

      + cdn_policy (known after apply)

      + iap (known after apply)

      + log_config (known after apply)
    }

  # module.load_balancer.google_compute_forwarding_rule.default will be created
  + resource "google_compute_forwarding_rule" "default" {
      + base_forwarding_rule  = (known after apply)
      + creation_timestamp    = (known after apply)
      + effective_labels      = (known after apply)
      + forwarding_rule_id    = (known after apply)
      + id                    = (known after apply)
      + ip_address            = (known after apply)
      + ip_protocol           = (known after apply)
      + ip_version            = (known after apply)
      + label_fingerprint     = (known after apply)
      + load_balancing_scheme = "EXTERNAL"
      + name                  = "http-rule"
      + network               = (known after apply)
      + network_tier          = (known after apply)
      + port_range            = "80"
      + project               = "test-71953-439609"
      + psc_connection_id     = (known after apply)
      + psc_connection_status = (known after apply)
      + recreate_closed_psc   = false
      + region                = (known after apply)
      + self_link             = (known after apply)
      + service_name          = (known after apply)
      + subnetwork            = (known after apply)
      + target                = (known after apply)
      + terraform_labels      = (known after apply)

      + service_directory_registrations (known after apply)
    }

  # module.load_balancer.google_compute_global_address.default will be created
  + resource "google_compute_global_address" "default" {
      + address            = (known after apply)
      + creation_timestamp = (known after apply)
      + effective_labels   = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                 = (known after apply)
      + label_fingerprint  = (known after apply)
      + name               = "global-address"
      + prefix_length      = (known after apply)
      + project            = "test-71953-439609"
      + self_link          = (known after apply)
      + terraform_labels   = {
          + "goog-terraform-provisioned" = "true"
        }
    }

  # module.load_balancer.google_compute_http_health_check.default will be created
  + resource "google_compute_http_health_check" "default" {
      + check_interval_sec  = 5
      + creation_timestamp  = (known after apply)
      + healthy_threshold   = 2
      + id                  = (known after apply)
      + name                = "http-health-check"
      + port                = 80
      + project             = "test-71953-439609"
      + request_path        = "/"
      + self_link           = (known after apply)
      + timeout_sec         = 5
      + unhealthy_threshold = 2
    }

  # module.load_balancer.google_compute_target_http_proxy.default will be created
  + resource "google_compute_target_http_proxy" "default" {
      + creation_timestamp = (known after apply)
      + id                 = (known after apply)
      + name               = "http-proxy"
      + project            = "test-71953-439609"
      + proxy_bind         = (known after apply)
      + proxy_id           = (known after apply)
      + self_link          = (known after apply)
      + url_map            = (known after apply)
    }

  # module.load_balancer.google_compute_url_map.default will be created
  + resource "google_compute_url_map" "default" {
      + creation_timestamp = (known after apply)
      + default_service    = (known after apply)
      + fingerprint        = (known after apply)
      + id                 = (known after apply)
      + map_id             = (known after apply)
      + name               = "url-map"
      + project            = "test-71953-439609"
      + self_link          = (known after apply)
    }

  # module.vpc.google_compute_network.vpc["vpc_1"] will be created
  + resource "google_compute_network" "vpc" {
      + auto_create_subnetworks                   = true
      + delete_default_routes_on_create           = false
      + description                               = "VPC created by Terraform"
      + gateway_ipv4                              = (known after apply)
      + id                                        = (known after apply)
      + internal_ipv6_range                       = (known after apply)
      + mtu                                       = (known after apply)
      + name                                      = "vpc-1"
      + network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
      + numeric_id                                = (known after apply)
      + project                                   = "test-71953-439609"
      + routing_mode                              = (known after apply)
      + self_link                                 = (known after apply)
    }

  # module.vpc.google_compute_network.vpc["vpc_2"] will be created
  + resource "google_compute_network" "vpc" {
      + auto_create_subnetworks                   = true
      + delete_default_routes_on_create           = false
      + description                               = "VPC created by Terraform"
      + gateway_ipv4                              = (known after apply)
      + id                                        = (known after apply)
      + internal_ipv6_range                       = (known after apply)
      + mtu                                       = (known after apply)
      + name                                      = "vpc-2"
      + network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
      + numeric_id                                = (known after apply)
      + project                                   = "test-71953-439609"
      + routing_mode                              = (known after apply)
      + self_link                                 = (known after apply)
    }

Plan: 14 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + load_balancer_ip = (known after apply)

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
