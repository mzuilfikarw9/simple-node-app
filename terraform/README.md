# AWS Infrastructure Setup using Terraform

This project sets up a basic AWS infrastructure using Terraform, including a VPC, a public subnet, an EC2 instance running Ubuntu, and an S3 bucket.

## Prerequisites
- Terraform installed on your machine.
- AWS account and AWS CLI configured with necessary permissions.
- SSH key pair generated and placed in the same directory as Terraform configuration with the file name `deployer-key.pub`.

## Steps to Deploy
1. Clone this repository and navigate into the project directory.
2. Run `terraform init` to initialize the project.
3. Run `terraform apply` to apply the configuration and create the infrastructure.

## Accessing the EC2 Instance
- Use the following command to access the EC2 instance:
  ```bash
  ssh -i path/to/deployer-key ubuntu@<EC2_PUBLIC_IP>

## Cleanup ##
Run terraform destroy to remove all resources created by this configuration.

- Make sure to replace placeholders such as the AMI ID and bucket name with actual values suitable for your region and requirements. Additionally, ensure the SSH key (`deployer-key.pub`) is generated before applying the Terraform scripts. This setup will provide a basic overview and a functional AWS environment within the Free Tier limitations.
