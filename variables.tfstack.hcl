# Referencing upstream stack outputs
upstream_input "network_stack" {
  type = "stack"
  source = "app.terraform.io/hashicorp/stacks/network_stack"
}

variable "vpc_id" {
  description = "VPC ID from the upstream stack"
  default     = upstream_inputs.vpc_stack.vpc_id
}

variable "subnet_private_id" {
  description = "Private subnet ID from the upstream stack"
  default     = upstream_inputs.vpc_stack.subnet_private_id
}

variable "subnet_public_id" {
  description = "Public subnet ID from the upstream stack"
  default     = upstream_inputs.vpc_stack.subnet_public_id
}

