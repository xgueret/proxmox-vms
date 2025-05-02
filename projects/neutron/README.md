# 🚀 DNS Automation Project with PowerDNS and 🛡️ PowerDNS-Admin

![Stars](https://img.shields.io/github/stars/xgueret/proxmox-vm-dsnzilla?style=social) ![Last Commit](https://img.shields.io/github/last-commit/xgueret/proxmox-vm-dnszilla) ![Status](https://img.shields.io/badge/Status-Active-brightgreen)

This project automates the deployment of a PowerDNS server with its PowerDNS-Admin web interface using Ansible and Terraform.

## 🌐 Project Architecture

The project is structured in two main parts:

1. **Terraform**: For VM provisioning
2. **Ansible**: For service installation and configuration

## 📋 Prerequisites

- Terraform (>= 1.11.0)
- Ansible
- Proxmox account with appropriate permissions
- GitHub access (if using the repository management part)

## 🛠️ Usage

### 1. VM Provisioning with Terraform

1. Go to the `terraform/proxmox/` directory
2. Create a `terraform.tfvars` file with your variables (example below)
3. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply

Example `terraform.tfvars`:

```properties
pm_api_url           = "https://your-proxmox-server:8006/api2/json"
pm_api_token_id      = "your-user@pam!token-name"
pm_api_token_secret  = "your-token-secret"
vm_template_id       = 9000  # Your template ID
```

### 2. Configuration with Ansible

1. Go to the `ansible/` directory

2. Configure variables in:

   - `group_vars/dnszilla/vault/main.yml` (encrypted with ansible-vault)
   - `roles/powerdns/vars/main.yml`

3. Run the playbook:

   ```bash
   ansible-playbook deploy.yml
   ```

### 🔑 Important Ansible Variables

Main variables are defined in:

- `ansible/roles/powerdns/vars/main.yml`
- `ansible/group_vars/dnszilla/vault/main.yml` (encrypted)

## 🔒 Security

Sensitive files are encrypted with Ansible Vault. A pre-commit hook verifies that files in the `vault/` directory are properly encrypted.

## 💻 Code Management

The project includes pre-commit configuration for:

- Shell script formatting
- Ansible syntax checking
- Terraform validation
- Ensuring sensitive files are encrypted

To install hooks:

```bash
pre-commit install
```

## 📂 File Structure

```
.
├── ansible/                  # Ansible configuration
│   ├── ansible.cfg           # Global Ansible config
│   ├── deploy.yml            # Main playbook
│   ├── inventory.yml         # Host inventory
│   └── roles/powerdns/       # PowerDNS role
├── terraform/
│   ├── proxmox/              # Proxmox configuration
│   └── github/               # GitHub configuration
├── check_ansible_vault.sh    # Encryption verification script
└── .pre-commit-config.yaml   # pre-commit configuration
```
---

## 👥 Contributors

- **Author**: Xavier GUERET 
  [![GitHub followers](https://img.shields.io/github/followers/xgueret?style=social)](https://github.com/xgueret) [![Twitter Follow](https://img.shields.io/twitter/follow/xgueret?style=social)](https://x.com/hixmaster) [![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/xavier-gueret-47bb3019b/)

## 👥 Contributing

Contributions are welcome! Please feel free to submit a [Pull Request](https://github.com/xgueret/proxmox-vm-zilla/pulls).

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/xgueret/proxmox-vm-dnszilla/blob/main/LICENSE) file for details.labs
