variable "environment" {
  description = "Environment name"
  type = string
}

variable "account_id" {
  description = "Cloud provider account ID"
  type        = string
}

variable "region" {
  description = "Cloud provider region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "subnet_private_id" {
  description = "Private subnet ID"
  type = string
}

variable "subnet_public_id" {
  description = "Public subnet ID"
  type = string
}

