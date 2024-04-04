variable "vm_name" {
  type = string
  description = "Name of the virtual machine."
}

variable "datacenter" {
  type = string
  description = "Name of the datacenter where the VM will be placed."
}

variable "folder" {
  type = string
  description = "Path to the folder where the VM will be placed."
}

variable "resource_pool_id" {
  type = string
  description = "ID of the resource pool for the VM."
}

variable "num_cpus" {
  type = number
  description = "Number of virtual CPUs."
}

variable "memory" {
  type = number
  description = "Memory in MB."
}

variable "networks" {
  type = list(object({
    network_id = string
  }))
  description = "List of networks to attach to the VM."
}

variable "disks" {
  type = list(object({
    datastore_id = string
    size         = number # In GB
  }))
  description = "List of disks to attach to the VM."
}

variable "guest_id" {
  type = string
  description = "Guest OS ID for customization."  
}

variable "customization" {
  type = object({
    hostname             = string
    domain               = string
    domain_admin_user    = string  
    domain_admin_password = string
    network_interfaces   = list(object({
      ipv4_address         = string
      ipv4_netmask         = string
      dns_server_addresses = list(string)
      dns_domain           = string
    }))
  })
  description = "Customization settings for the guest OS."
  default = null
}

variable "cdrom" {
  type = object({
    datastore_id = string
    path         = string
  })
  description = "Configuration for ISO mounting."
  default = null
}
