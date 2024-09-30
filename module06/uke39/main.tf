locals {
  workspace_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name = terraform.workspace == "default" ? "${var.resource_group_name}" : "${var.resource_group_name}-${local.workspace_suffix}"
  sa_name = terraform.workspace == "default" ? "${var.storage_account_name}" : "${var.storage_account_name}${local.workspace_suffix}"
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
}

# Create Storage Account
resource "azurerm_storage_account" "sa" {
  name                     = "${lower(local.sa_name)}${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${local.workspace_suffix}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

# Create Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "subnet-${local.workspace_suffix}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create Network Interface
resource "azurerm_network_interface" "nic" {
  name                = "nic-${local.workspace_suffix}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Create Virtual Machine
resource "azurerm_virtual_machine" "vm" {
  name                  = "vm-${local.workspace_suffix}"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = var.vm_size

  os_profile {
    computer_name  = "hostname"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myOSDisk-${local.workspace_suffix}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
}

# Add a Random String for Unique Naming
resource "random_string" "random_string" {
  length  = 8
  special = false
  upper   = false
}

# Output the Public IP of the VM (useful for testing)
output "vm_public_ip" {
  value = azurerm_virtual_machine.vm.primary_public_ip_address
}
