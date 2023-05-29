output "id" {
  value = aws_instance.instance.id
}

output "ec2_instance1_public_ip" {
  description = "Public IP address of EC2 Instance 1"
  value       = aws_instance.ec2_instance1.public_ip
}

output "ec2_instance2_public_ip" {
  description = "Public IP address of EC2 Instance 2"
  value       = aws_instance.ec2_instance2.public_ip
}