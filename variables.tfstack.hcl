variable "account_id" {
  description = "Cloud provider account ID"
  type        = string
}

variable "region" {
  description = "Cloud provider region"
  type        = string
}

variable "staging_vpc_id" {
  type = string
  description = "VPC ID from the staging network stack"
}

variable "staging_subnet_private_id" {
  type = string
  description = "Private subnet ID from the staging network stack"
}

variable "staging_subnet_public_id" {
  type = string
  description = "Public subnet ID from the staging network stack"
}

variable "prod_vpc_id" {
  type = string
  description = "VPC ID from the prod network stack"
}

variable "prod_subnet_private_id" {
  type = string
  description = "Private subnet ID from the prod network stack"
}

variable "prod_subnet_public_id" {
  type = string
  description = "Public subnet ID from the prod network stack"
}

