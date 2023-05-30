output "id" {
  value = aws_instance.instance.id
}

output "public1_ip" {
  value = aws_instance.ec2_instance1.public_ip
}

output "public2_ip" {
  value = aws_instance.ec2_instance2.public_ip
}