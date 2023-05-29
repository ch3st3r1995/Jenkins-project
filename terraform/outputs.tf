output "ec2_instance1" {
  value = module.ec2_instance1.public_ip
}

output "ec2_instance2" {
    value = module.ec2_instance2.public_ip
}

output "rds_endpoint" {
    value = module.rds.endpoint
}
