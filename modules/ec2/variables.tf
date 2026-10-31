variable "env" {
  description = "which environment the resources are being created in dev, qa, prod"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
}

variable "instance_count" {
    description = "The number of EC2 instances to create"
    type        = number
}

variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  description = "VPC ID where the EC2 security group will be created"
  type        = string
}
