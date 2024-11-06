output "lb_public_ip" {
  description = "The public IP address of the load balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "lb_id" {
  description = "The ID of the load balancer"
  value       = azurerm_lb.load_balancer.id
}