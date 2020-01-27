provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "PacketDatacenter"
}

data "vsphere_datastore" "datastore" {
  name          = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id
}


data "vsphere_compute_cluster" "maincluster" {
  name          = "MainCluster"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
