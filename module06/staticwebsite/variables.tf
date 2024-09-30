variable "location" {
  description = "The Azure Region in which the resources should be deployed."
  type        = string
  default     = "westeurope"
}

variable "rg_name" {
  description = "The name of the Resource Group in which the resources should be deployed."
  type        = string
  default     = "wso-rg-web"
}

variable "sa_name" {
  description = "The name of the Storage Account in which the resources should be deployed."
  type        = string
  default     = "saweb"
}

variable "source_content" {
  description = "The content of the index.html file."
  type        = string
  default     = "<h1>Web page created with Terraform - CI/CD</h1>"
}

variable "index_document" {
  description = "The name of the index document."
  type        = string
  default     = "index.html"
}