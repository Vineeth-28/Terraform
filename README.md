
# 🚀 Terraform AWS EC2 Instance

A beginner-friendly Terraform project that provisions an AWS EC2 instance along with:

- Security Group
- SSH Access (Port 22)
- HTTP Access (Port 80)
- EC2 Key Pair
- Public IP Output

---

## 📋 Architecture

```text
Terraform
    │
    ├── Security Group
    │      ├── SSH (22)
    │      └── HTTP (80)
    │
    ├── Key Pair
    │
    └── EC2 Instance
            └── Public IP
```

---

## 🛠 Prerequisites

Before using this project, ensure you have:

- AWS Account
- IAM User with EC2 permissions
- Terraform installed (v1.0+)
- AWS CLI configured

Verify installation:

```bash
terraform -version
aws --version
```

Configure AWS credentials:

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Region: ap-south-1
Output format: json
```

---

## 📂 Project Structure

```text
.
├── main.tf
└── README.md
```

---

## 📦 Resources Created

### Security Group

Allows:

| Port | Protocol | Purpose |
|--------|----------|----------|
| 22 | TCP | SSH Access |
| 80 | TCP | HTTP Access |

---

### EC2 Instance

Configuration:

| Setting | Value |
|----------|--------|
| Instance Type | t2.micro |
| Region | ap-south-1 |
| Root Volume | 20 GB |
| Volume Type | gp2 |

---

### Key Pair

Terraform creates an AWS Key Pair using the provided public key.

---

## 🚀 Deployment

### Step 1: Initialize Terraform

```bash
terraform init
```

---

### Step 2: Validate Configuration

```bash
terraform validate
```

---

### Step 3: Review Execution Plan

```bash
terraform plan
```

---

### Step 4: Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

---

## 📤 Outputs

After successful deployment:

```text
public_ip = xx.xx.xx.xx
```

Terraform will display the public IP address of the EC2 instance.

---

## 🔑 SSH Into Instance

```bash
ssh -i private_key.pem ubuntu@<PUBLIC_IP>
```

Example:

```bash
ssh -i mykey.pem ubuntu@13.234.123.100
```

---

## 🧹 Destroy Infrastructure

To delete all created resources:

```bash
terraform destroy
```

Confirm:

```text
yes
```

---

## ⚠️ Security Recommendations

This project is designed for learning purposes.

Current configuration:

```text
SSH (22) → 0.0.0.0/0
HTTP (80) → 0.0.0.0/0
```

For production environments:

- Restrict SSH access to trusted IP ranges.
- Use IAM Roles instead of access keys.
- Enable CloudWatch monitoring.
- Encrypt EBS volumes.
- Store Terraform state remotely (S3 + DynamoDB).
- Apply least-privilege IAM permissions.

---

## 📚 Learning Objectives

By completing this project, you will learn:

- Terraform Providers
- Terraform Resources
- AWS EC2 Provisioning
- Security Groups
- Key Pairs
- Terraform Outputs
- Infrastructure as Code (IaC)

---

## 📖 Useful Commands

```bash
terraform fmt
terraform validate
terraform plan
terraform apply
terraform show
terraform state list
terraform destroy
```

---

## 🎯 Future Enhancements

- Custom VPC
- Public & Private Subnets
- Internet Gateway
- Route Tables
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Remote Backend (S3)
- State Locking (DynamoDB)

---

## 👨‍💻 Author

Built for learning Terraform and AWS Infrastructure as Code.
