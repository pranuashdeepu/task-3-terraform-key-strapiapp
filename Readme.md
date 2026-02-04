## 📌 Project Overview
This project demonstrates an end-to-end **Infrastructure as Code (IaC)** workflow using **Terraform** to provision AWS infrastructure and deploy a **Strapi Headless CMS** on an EC2 instance.

It is designed for **DevOps beginners** and **cloud learners**, showcasing real-world practices such as modular Terraform, secure key handling, and application deployment on AWS.

### What this project covers
- Modular Terraform architecture
- Automated SSH key pair generation
- Secure EC2 provisioning
- Security group configuration
- Public networking setup
- Node.js runtime installation
- Strapi application deployment
- Application access via public IP

---

terraform-strapi-ec2/
│
├── main.tf
├── variables.tf
├── outputs.tf
│
├── modules/
│   ├── keypair/
│   │   ├── main.tf
│   │   └── outputs.tf
│   │
│   ├── security_group/
│   │   ├── main.tf
│   │
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│
└── README.md

### 1️⃣ Initialize Terraform
```bash
terraform init

terraform plan

terraform apply

ssh -i "strapi-key.pem" ubuntu@ec2-13-233-246-32.ap-south-1.compute.amazonaws.com

🟢 Install Node.js on EC2
sudo yum update -y
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

Verify installation:

node -v
npm -v

🚀 Deploy Strapi Application
npx create-strapi-app@latest my-strapi --quickstart

🌐 Access Strapi Admin Panel
http://http://13.233.246.32:1337/admin
