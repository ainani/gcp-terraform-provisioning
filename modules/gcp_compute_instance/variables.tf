# Accept VPC names as a variable
variable "vpc_names" {
  type        = map(string)
  description = "Map of VPC names to create instances in"
}

variable "machine_type" {
  type        = string
  description = "Machine type"
  default     = "f1-micro"
}

variable "zone_name" {
  type        = string
  description = "Zone name"
  default     = "us-central1-a"
}

variable "machine_image" {
  type        = string
  description = "Name of image to be used"
  default     = "debian-cloud/debian-10"
}


variable "instance_group_name" {
  type        = string
  description = "Name of the instance group"
}

variable "base_instance_name" {
  type        = string
  description = "Base name for the instances in the instance group"
  default     = "my-instance"
}

variable "instance_template" {
  type        = string
  description = "Instance Template name"
}

variable "zone" {
  type = string
}