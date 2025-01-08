variable "vpc_id" {
  description = "VPC ID from the upstream stack"
  default     = upstream_inputs.network_stack.staging_vpc_id
}

variable "subnet_private_id" {
  description = "Private subnet ID from the upstream stack"
  default     = upstream_inputs.network_stack.staging_subnet_private_id
}

variable "subnet_public_id" {
  description = "Public subnet ID from the upstream stack"
  default     = upstream_inputs.network_stack.staging_subnet_public_id
}

variable "vpc_id" {
  description = "VPC ID from the upstream stack"
  default     = upstream_inputs.network_stack.prod_vpc_id
}

variable "subnet_private_id" {
  description = "Private subnet ID from the upstream stack"
  default     = upstream_inputs.network_stack.prod_subnet_private_id
}

variable "subnet_public_id" {
  description = "Public subnet ID from the upstream stack"
  default     = upstream_inputs.network_stack.prod_subnet_public_id
}

