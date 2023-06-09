#!/bin/bash

terraform output --json | jq .ec2_instance1_public_ip.value -r >> ../ansible/inventory/hosts
terraform output --json | jq .ec2_instance2_public_ip.value -r >> ../ansible/inventory/hosts
ec2_instance1_public_ip=$(terraform output --json | jq .ec2_instance1_public_ip.value -r)
ec2_instance2_public_ip=$(terraform output --json | jq .ec2_instance2_public_ip.value -r)
echo $ec2_instance1_public_ip
echo $ec2_instance2_public_ip
rdsHost=$(terraform output --json | jq .rds_endpoint.value -r | cut -d ':' -f 1)
echo $rdsHost
sed -i "s/rds_host/$rdsHost/g" ../ansible/roles/wordpress/defaults/main.yml
cat ../ansible/roles/wordpress/defaults/main.yml
rdsPassword=$(aws secretsmanager get-secret-value --secret-id rds-credentials --region us-east-1 | jq .SecretString | cut -d ':' -f 2 | tr -d '"''\\''}')
echo $rdsPassword
sed -i "s/rds_password/$rdsPassword/g" ../ansible/roles/wordpress/defaults/main.yml
cat ../ansible/roles/wordpress/defaults/main.yml