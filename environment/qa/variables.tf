variable "env" {
    description = "Environment name"
    type        = string
  
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "public_subnet_cidr" {
    description = "CIDR block for the public subnet"
    type        = string
}

variable "az" {
    description = "Availability Zone"
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "instance_count" {
    description = "Number of EC2 instances"
    type        = number
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type        = string
}
