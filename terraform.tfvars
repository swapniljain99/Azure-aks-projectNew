# Azure subscription ID (optional if ARM_SUBSCRIPTION_ID is set in your environment).
subscription_id = "43d668f8-6026-400d-a3ea-b5ecc4803a7b"

location               = "East US"
resource_group_name    = "rg-network-vm"
vnet_name              = "vnet-demo"
vnet_address_space     = "10.0.0.0/16"
subnet1_name           = "subnet-app"
subnet1_address_prefix = "10.0.1.0/24"
subnet2_name           = "subnet-data"
subnet2_address_prefix = "10.0.2.0/24"
vm_name                = "vm-demo"
vm_size                = "Standard_B2ms"
admin_username         = "azureuser"

# Set this to your public IP followed by /32; do not expose SSH to the internet.
admin_source_cidr = "0.0.0.0/0"

# Set the password outside this file, for example with TF_VAR_admin_password.
