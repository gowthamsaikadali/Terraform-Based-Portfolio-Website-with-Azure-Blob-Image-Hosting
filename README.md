Terraform-Based Portfolio Website with Azure Blob Image Hosting
📌 Project Overview

This project demonstrates how to deploy a personal portfolio website using Terraform and Microsoft Azure. The infrastructure is provisioned using Infrastructure as Code (IaC) and the website assets are hosted using Azure Storage services.

The portfolio website is deployed on an Azure Virtual Machine while images are stored and served from Azure Blob Storage.

This project showcases practical experience with Terraform, Azure Cloud, and DevOps practices, making it suitable for learning and portfolio demonstration.

Terraform allows cloud infrastructure to be defined using code and deployed automatically, ensuring consistent and repeatable environments.

🏗️ Architecture
User Browser
      │
      ▼
Azure Virtual Machine (Linux)
      │
      ▼
Portfolio Website (HTML/CSS)
      │
      ▼
Azure Blob Storage
      │
      ▼
Portfolio Images
🚀 Features

Infrastructure provisioning using Terraform

Portfolio website hosted on Azure Linux Virtual Machine

Images hosted using Azure Blob Storage

Modular Terraform configuration

Static portfolio webpage

Easy deployment and reproducible infrastructure

Demonstrates DevOps + Cloud Engineering skills

🛠️ Technologies Used
Cloud

Microsoft Azure

Infrastructure as Code

Terraform

Azure Services

Azure Resource Group

Azure Virtual Machine

Azure Storage Account

Azure Blob Storage

Web Technologies

HTML

CSS

📂 Project Structure
Terraform-Based-Portfolio-Website-with-Azure-Blob-Image-Hosting
│
├── terraform
│   ├── provider.tf
│   ├── resource-group.tf
│   ├── network.tf
│   ├── vm.tf
│   └── variables.tf
│
├── portfolio
│   └── index.html
│
└── README.md
⚙️ Prerequisites

Before deploying this project, ensure you have:

Terraform installed

Azure CLI installed

Azure subscription

Git installed

Login to Azure:

az login
🚀 Deployment Steps
1️⃣ Clone the repository
git clone https://github.com/gowthamsaikadali/Terraform-Based-Portfolio-Website-with-Azure-Blob-Image-Hosting.git
cd Terraform-Based-Portfolio-Website-with-Azure-Blob-Image-Hosting
2️⃣ Initialize Terraform
terraform init
3️⃣ Validate configuration
terraform validate
4️⃣ Plan the infrastructure
terraform plan
5️⃣ Deploy resources
terraform apply

Type:

yes

Terraform will create:

Resource Group

Network resources

Linux Virtual Machine

Storage resources

🌐 Access the Website

After deployment, Terraform outputs the public IP address of the VM.

Open in browser:

http://<public-ip>

You will see your portfolio website.

📸 Image Hosting with Azure Blob

Portfolio images are stored in Azure Blob Storage and accessed by the website through blob URLs.

Example:

https://<storage-account>.blob.core.windows.net/<container>/<image>.png

This approach improves:

Website performance

Scalability

Storage management

🔐 Security Improvements (Future Enhancements)

Use SSH authentication instead of password

Store secrets in Azure Key Vault

Use Terraform remote backend

Implement CI/CD using GitHub Actions

Use Azure Static Web Apps or CDN

📈 Future Enhancements

CI/CD pipeline with GitHub Actions

Custom domain for portfolio

HTTPS using Azure Front Door

Dockerized portfolio deployment

Monitoring with Azure Monitor

👨‍💻 Author

Kadali Gowtham Sai

Multi Cloud | DevSecOps Engineer

GitHub:
https://github.com/gowthamsaikadali

⭐ If you found this project useful, please consider giving it a star!
