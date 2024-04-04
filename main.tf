terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "x.y.z" 
    }
  }

  backend "bitbucket" {
    # ... your Bitbucket backend configuration ...
  }
}

provider "vsphere" {
  # ... your vSphere provider configuration ...
}

module "vm_1" {
  source = "./vm_module"

  # Provide values for all the variables defined in the vm_module
  # ...
}

# Add more module blocks for additional VMs if needed 
