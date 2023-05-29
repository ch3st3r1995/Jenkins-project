data "aws_instance" "ec2_instance1" {
  instance_id = aws_instance.ec2_instance1.id
}

data "aws_instance" "ec2_instance2" {
  instance_id = aws_instance.ec2_instance2.id
}

output "ec2_instance1_public_ip" {
  value = data.ec2_instance1.public_ip
}

output "ec2_instance2_public_ip" {
  value = data.ec2_instance2.public_ip
}