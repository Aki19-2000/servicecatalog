variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "portfolio_name" {
  description = "The name of the service catalog portfolio"
  type        = string
  default     = "S3 bucket1"
}


variable "product_name" {
  description = "Name of the service catalog product"
  type        = string
  default     = "Simple S3 bucket1"
}

variable "product_version" {
  description = "Version of the service catalog product"
  type        = string
  default     = "v1"
}
variable "owner_name" {
  description = "The name of the portfolio owner"
  type        = string
  default     = "Akshaya"  # Set your default owner name here
}

variable "template_file_path" {
  description = "Path to the template file for the external product"
  type        = string
}
