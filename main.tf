provider "aws" {
  region = "us-east-2"  # Change to your desired AWS region
}

resource "aws_instance" "my_ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  subnet_id       = var.subnet_id
  vpc_security_group_ids = split(",", var.security_group_ids)

  associate_public_ip_address = var.auto_assign_public_ip

  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_size = var.storage_size_gb
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "auto_assign_public_ip" {
  description = "Auto-assign public IP"
  type        = bool
}

variable "security_group_ids" {
  description = "Security Group IDs, separated by commas"
  type        = string
}

variable "storage_size_gb" {
  description = "Root volume size in GB"
  type        = number
}
