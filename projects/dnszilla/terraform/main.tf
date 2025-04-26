terraform {
  required_version = ">= 1.11.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.76.0"
    }
  }
}

provider "proxmox" {
  endpoint  = var.pm_api_url
  api_token = "${var.pm_api_token_id}=${var.pm_api_token_secret}"
  insecure  = true
}

module "dnszilla_vm" {

  source = "../../../modules/proxmox_vm_template"

  providers = {
    proxmox = proxmox
  }

  vm_count            = 1
  vm_template_id      = 9001
  vm_disk0_size       = 50
  vm_cpu_cores        = 2
  vm_memory           = 4096
  vm_name_prefix      = "dnszilla"
  vm_baseid           = 9010
  vm_ip_start         = 10
  project_description = "VM for dnszilla project"

}
