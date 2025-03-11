variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "portfolio_name" {
  description = "The name of the service catalog portfolio"
  type        = string
}

variable "owner_name" {
  description = "The name of the portfolio owner"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the IAM policy to attach to the role"
  type        = string
}

variable "product_name" {
  description = "Name of the service catalog product"
  type        = string
}

variable "product_version" {
  description = "Version of the service catalog product"
  type        = string
}

variable "template_file_path" {
  description = "Path to the template file for the external product"
  type        = string
}
