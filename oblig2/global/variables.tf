variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, staging, prod)"
  default     = terraform.workspace
}

variable "location" {
  type        = string
  description = "Azure location for deployment"
  default     = "West Europe"
}