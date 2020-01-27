output "datastore" {
    value = data.vsphere_datastore.datastore.id
}

output "guest_ip" {
    value = vsphere_virtual_machine.vm.guest_ip_addresses
}