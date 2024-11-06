
module "networking" {
  source               = "../modules/networking"
  environment          = var.environment
  location             = var.location
  resource_group_name  = var.resource_group_name
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  nsg_name             = var.nsg_name
  subnet_configs       = var.subnet_configs
}

module "app_service" {
  source               = "../modules/app_service"
  environment          = var.environment
  location             = var.location
  resource_group_name  = var.resource_group_name
  os_type              = var.os_type
  sku_name             = var.sku_name
  runtime_stack        = var.runtime_stack
  auth_enabled         = var.auth_enabled
}

module "database" {
  source               = "../modules/database"
  environment          = var.environment
  location             = var.location
  resource_group_name  = var.resource_group_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  database_collation   = var.database_collation
  max_size_gb          = var.max_size_gb
  sku_name             = var.sku_name
}

module "load_balancer" {
  source               = "../modules/load_balancer"
  environment          = var.environment
  location             = var.location
  resource_group_name  = var.resource_group_name
}

module "storage" {
  source               = "../modules/storage"
  environment          = var.environment
  location             = var.location
  resource_group_name  = var.resource_group_name
  container_name       = var.container_name
}