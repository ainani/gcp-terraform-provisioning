variable "name" {
  type        = string
  description = "Name of the instance template"
}

variable "machine_type" {
  type        = string
  description = "Machine type for the instance"
}

variable "zone" {
  type        = string
  description = "The zone in which to create the instance template"
}

variable "boot_disk_image" {
  type        = string
  description = "Boot disk image"
}

variable "network" {
  type        = string
  description = "The network to attach the instance to"
}
