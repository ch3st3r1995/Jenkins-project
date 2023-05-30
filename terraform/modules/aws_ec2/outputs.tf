output "id" {
  value = aws_instance.instance.id
}

output "public_ip_ec2_instance1" {
  value = aws_instance.ec2_instance1.public_ip
}

output "public_ip_ec2_instance2" {
  value = aws_instance.ec2_instance2.public_ip
}
