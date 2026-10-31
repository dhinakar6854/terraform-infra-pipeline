variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}



variable "env" {
  description = "The environment for the VPC resources"
  type        = string
}

variable "az" {
  description = "The availability zone for the subnet"
  type        = string
}