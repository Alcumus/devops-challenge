#!/bin/bash
echo "Starting Terraforming"
echo "Ensure you are in the root folder of this repo"
echo "Ensure you have aws key and secret in tfvars file or if its federated go with the file option"

cd ./terraform && terraform init
terraform plan -out test-devops.tfplan && terraform apply test-devops.tfplan