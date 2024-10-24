variable "vpc_network" {
  type = map(string)
  default = {
    vpc_1 = "VPC-NETWORK-1",
    vpc_2 = "VPC-NETWORK-2"
  }
}