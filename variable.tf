variable "subscription_id" {
  description = "Azure subscription ID. Can be omitted when ARM_SUBSCRIPTION_ID is set."
  type        = string
  default     = null
}

variable "location" {
  description = "Azure region in which to create the resource group and network resources."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group for the network and virtual machine."
  type        = string
  default     = "rg-network-vm"
}

variable "vnet_name" {
  description = "Name of the Azure virtual network."
  type        = string
  default     = "vnet-demo"
}

variable "vnet_address_space" {
  description = "IPv4 address range for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet1_name" {
  description = "Name of the first subnet, which hosts the VM."
  type        = string
  default     = "subnet-app"
}

variable "subnet1_address_prefix" {
  description = "IPv4 address range for the first subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet2_name" {
  description = "Name of the second subnet."
  type        = string
  default     = "subnet-data"
}

variable "subnet2_address_prefix" {
  description = "IPv4 address range for the second subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "vm_name" {
  description = "Name of the Linux virtual machine."
  type        = string
  default     = "vm-demo"
}

variable "vm_size" {
  description = "Azure VM size. Choose a size available under your regional quota."
  type        = string
  default     = "Standard_B2ms"
}

variable "admin_username" {
  description = "Linux administrator username for SSH login."
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Linux administrator password for SSH password authentication. Supply via TF_VAR_admin_password or an uncommitted tfvars file."
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.admin_password) >= 12 && length(var.admin_password) <= 72
    error_message = "The administrator password must be between 12 and 72 characters."
  }
}

variable "admin_source_cidr" {
  description = "CIDR allowed to connect to the VM over SSH; restrict this to your public IP (/32)."
  type        = string
  default     = "0.0.0.0/0"
}