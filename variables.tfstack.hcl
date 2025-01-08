variable "account_id" {
  description = "Cloud provider account ID"
  type        = string
}

variable "region" {
  description = "Cloud provider region"
  type        = string
}

variable "vpc_id" {
  type = string
  description = "VPC ID from the staging network stack"
}

variable "subnet_private_id" {
  type = string
  description = "Private subnet ID from the staging network stack"
}

variable "subnet_public_id" {
  type = string
  description = "Public subnet ID from the staging network stack"
}
