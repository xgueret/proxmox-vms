
# 🚀 Proxmox VM Automation Project

![Stars](https://img.shields.io/github/stars/xgueret/proxmox-vms?style=social)![Last Commit](https://img.shields.io/github/last-commit/xgueret/proxmox-vms)![Status](https://img.shields.io/badge/Status-Active-brightgreen)![License](https://img.shields.io/badge/License-MIT-blue)
![Terraform](https://img.shields.io/badge/Terraform-%E2%89%A51.11.0-623CE4)![Ansible](https://img.shields.io/badge/Ansible-2.14+-EE0000)

**This project provides Terraform and Ansible automation for managing virtual machines in a Proxmox VE environment.**

## 🌟 Features

* **Infrastructure as Code**: Complete VM lifecycle management
* **Modular Design**: Reusable components for different use cases
* **Secure Practices**: Encrypted secrets and pre-commit checks
* **Multi-project Support**: Various infrastructure components

## 📋 Prerequisites

* **Terraform (≥ 1.11.0)**
* **Ansible**
* **Proxmox VE cluster**
* **Python 3.8+**
* **Pre-commit (for development)**

## 🏗️ Project Structure

```
.
├── modules/ # Reusable Terraform modules
├── projects/ # Infrastructure projects
├── github/ # GitHub repository management
├── ansible.cfg # Ansible configuration
├── .pre-commit-config.yaml # Git hooks
└── requirements.txt # Python dependencies
```

## 🔐 Security

* **Sensitive data encrypted with Ansible Vault**
* **Pre-commit hooks verify encryption**
* **Secure API token handling**

1. **Clone the repository**
2. **Install dependencies:**
   ```
   pip install -r requirements.txt
   pre-commit install
   ```
3. **Configure your Proxmox credentials**
4. **Navigate to the desired project directory**

## 🚦 Getting Started

### 🛠️ Usage in each project

#### 1. VM Provisioning with Terraform

1. **Go to the **`terraform/` directory
2. **Create a **`terraform.tfvars` file with your variables (example below)
3. **Run:**
   ```
   terraform init
   terraform plan
   terraform apply

   ```

#### 2. Configuration with Ansible

1. **Go to the **`ansible/` directory
2. **Configure variables in:**
   * `group_vars/project_name/vault/main.yml` (encrypted with ansible-vault)
   * `roles/.../vars/main.yml`
3. **Run the playbook:**
   ```
   ansible-playbook deploy.yml
   ```

## 📂 Projects

### 🦖 DNSzilla

**Location**: `projects/dnszilla/`
**Automates deployment of PowerDNS server with PowerDNS-Admin web interface. Includes:**

* **Terraform VM provisioning**
* **Ansible configuration for DNS services**
* **MySQL backend integration**

### ⚛️ Neutron (Coming Soon)

**Location**: `projects/neutron/`
**(TODO: Add description once project is developed)**

## 👥 Contributors

* **Author**: Xavier GUERET**
  **[![GitHub followers](https://img.shields.io/github/followers/xgueret?style=social)](https://github.com/xgueret)[![Twitter Follow](https://img.shields.io/twitter/follow/xgueret?style=social)](https://x.com/hixmaster)[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/xavier-gueret-47bb3019b/)

## ✨ Contributing

**Contributions are welcome! Please feel free to submit a **[Pull Request](https://github.com/xgueret/proxmox-vms/pulls).
