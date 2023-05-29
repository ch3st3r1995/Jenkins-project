output "id" {
  value = aws_instance.instance.id
}

output "ec2_instance_ip" {
  value = aws_instance.ec2_instance.public_ip
}


