output "lb_id" {
  description = "The ID of the Load Balancer"
  value       = azurerm_lb.load_balancer.id
}

output "lb_frontend_ip_configuration" {
  description = "The frontend IP configuration of the Load Balancer"
  value       = azurerm_lb.load_balancer.frontend_ip_configuration[0].id
}

output "lb_public_ip" {
  description = "The public IP of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}
