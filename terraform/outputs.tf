output "ec2_instance1_value" {
  value = command("terraform output --json | jq .ec2_instance1.value -r")
}

output "ec2_instance2_value" {
  value = command("terraform output --json | jq .ec2_instance2.value -r")
}

