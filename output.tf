output "resource_group_name" {
  description = "Name of the resource group containing the network and VM."
  value       = azurerm_resource_group.main.name
}

output "vnet_name" {
  description = "Name of the virtual network."
  value       = azurerm_virtual_network.main.name
}

output "subnet_ids" {
  description = "IDs of the two virtual network subnets."
  value = {
    subnet1 = azurerm_subnet.subnet1.id
    subnet2 = azurerm_subnet.subnet2.id
  }
}

output "vm_name" {
  description = "Name of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.main.name
}

output "vm_public_ip" {
  description = "Public IP address for connecting to the VM."
  value       = azurerm_public_ip.vm.ip_address
}

output "ssh_command" {
  description = "SSH command for connecting to the VM (assuming the matching private key is available)."
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.vm.ip_address}"
}