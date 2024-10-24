variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key Pair Name for SSH"
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
  default     = true
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = string
}

variable "storage_size_gb" {
  description = "Storage size in GB"
  type        = number
  default     = 8
}
