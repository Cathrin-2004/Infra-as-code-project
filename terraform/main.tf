terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {
}

resource "local_file" "simulated_vm" {
  filename = "${path.module}/vm.txt"
  content  = "This represents a virtual machine provisioned using Terraform."
}
