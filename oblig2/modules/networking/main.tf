resource "azurerm_virtual_network" "vnet" {
  name                = "${var.environment}-${var.vnet_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_configs)
  name                 = var.subnet_configs[count.index].name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_configs[count.index].address_prefix
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.environment}-${var.nsg_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  count                   = length(var.subnet_configs)
  subnet_id               = azurerm_subnet.subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
