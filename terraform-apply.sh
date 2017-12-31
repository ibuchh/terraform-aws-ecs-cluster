#!/bin/bash

# Run Terraform iam, vpc & ec2

terraform init
terraform apply -target=module.iam -auto-approve
terraform apply -target=module.vpc -auto-approve
terraform apply -target=module.ec2 -auto-approve

# Run Terraform ecs
terraform apply -target=module.ecs -auto-approve
