provider "vsphere" {
#   user           = "demo"
#   password       = "demo"
#   vsphere_server = "your_vcenter_address"

  # If your vCenter has an untrusted certificate:
  allow_unverified_ssl = true
}
