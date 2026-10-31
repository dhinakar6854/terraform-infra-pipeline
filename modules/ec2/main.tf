resource "aws_security_group" "vpc_sg" {
  name        = "infra-pipe-vpc-sg"
  description = "Allow All inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  tags = {
    Name        = "${var.env}-vpc-sg"
    Environment = var.env
    Project     = "Infra-Pipe"
  }
}


resource "aws_instance" "web" {
    count         = var.instance_count
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    associate_public_ip_address = true
    security_groups = [aws_security_group.vpc_sg.id]

    
    tags = {
        Name        = "${var.env}-web-instance-${count.index + 1}"
        Environment = var.env
        Project     = "Infra-Pipe"
    }

}
