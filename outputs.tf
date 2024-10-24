output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.my_ec2_instance.public_ip
}
