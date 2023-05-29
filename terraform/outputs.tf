output "ec2_instance1_output" {
  value = "terraform output --json | jq .ec2_instance1.value -r"
}

output "ec2_instance2_output" {
  value = "terraform output --json | jq .ec2_instance2.value -r"
}
