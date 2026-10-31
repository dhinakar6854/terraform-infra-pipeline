data "aws_ssm_parameter" "ubuntu_2404" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

module "vpc" {
    source = "../../modules/vpc"
    vpc_cidr = var.vpc_cidr
    public_subnet_cidr = var.public_subnet_cidr
    env = var.env
    az = var.az
 
}

module "ec2" {
    source = "../../modules/ec2"
    env = var.env
    ami_id = data.aws_ssm_parameter.ubuntu_2404.value
    instance_type = var.instance_type
    instance_count = var.instance_count
    subnet_id = module.vpc.public_subnet_id
    vpc_id = module.vpc.vpc_id

}

module "s3" {
    source = "../../modules/s3"
    env = var.env
    bucket_name = var.bucket_name
}