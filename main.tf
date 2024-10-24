resource "aws_instance" "my_ec2_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_ids]
  subnet_id              = var.subnet_id

  associate_public_ip_address = var.auto_assign_public_ip
  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_size = var.storage_size_gb
  }
}
