# AWS Infrastructure Automation with Terraform

This project demonstrates a modular approach to deploying a scalable and secure infrastructure on AWS using Terraform.

## 🚀 Project Overview
The infrastructure is built with a focus on **reusability** and **scalability** by utilizing Terraform Modules. It includes a custom VPC, networking components, and compute resources.

### Key Features:
* **Custom VPC:** A dedicated Virtual Private Cloud for isolated resources.
* **Networking:** - Public Subnet for web-facing resources.
  - Private Subnet for internal database/backend security.
  - Internet Gateway and Route Tables configuration.
* **Compute:** EC2 instance deployed with a pre-configured Security Group.
* **Modular Design:** Infrastructure is split into a reusable `vpc_ec2` module.
* **Security:** Minimalist Security Group rules (SSH & HTTP only).

## 📁 Project Structure
```text
.
├── main.tf                 # Root configuration (calls the module)
├── variables.tf            # Global variables
├── outputs.tf              # Root outputs (DNS, IPs)
└── modules/
    └── vpc_ec2/            # Reusable networking & compute module
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
