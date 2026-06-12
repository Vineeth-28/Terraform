
#
# README: Terraform EC2 Example
#
# Purpose
# This Terraform configuration creates a simple AWS EC2 instance with an associated
# security group and an SSH key pair. It is intended as a minimal example to
# demonstrate provisioning an instance reachable via SSH and HTTP.
#
# Resources created
# - aws_security_group.web_sg: Security group allowing SSH (22) and HTTP (80)
# - aws_key_pair.deployer: Key pair resource using a provided public key
# - aws_instance.web: EC2 instance with a 20 GiB root volume and the security group
# - output.public_ip: Exposes the public IP of the EC2 instance
#
# Prerequisites
# - Terraform installed (v0.12+ recommended)
# - AWS CLI configured or environment variables set (AWS_ACCESS_KEY_ID,
#   AWS_SECRET_ACCESS_KEY, AWS_REGION)
# - The AMI ID used (ami-091138d0f0d41ff90) must be valid in the selected region.
#   Replace it if necessary.
#
# Usage
# 1. Initialize Terraform:
#    terraform init
#
# 2. (Optional) Review plan:
#    terraform plan
#
# 3. Apply to create resources:
#    terraform apply
#
# 4. After apply completes, Terraform will output `public_ip`. Connect via SSH:
#    ssh -i /path/to/private_key ubuntu@<public_ip>
#    (Ensure you use the corresponding private key for the public_key defined)
#
# Notes and recommendations
# - The security group currently allows SSH from 0.0.0.0/0 which is insecure. For
#   production, restrict `cidr_blocks` to trusted IP ranges.
# - The key pair resource stores only the public key; keep the matching private
#   key secure and outside version control.
# - The root volume uses `gp2` with 20 GiB. Adjust size/type per workload.
# - Consider adding tags, IAM roles, or user-data scripts to customize instance
#   configuration during provisioning.
#
# Cleanup
# To remove created resources:
#    terraform destroy
#
# End README
