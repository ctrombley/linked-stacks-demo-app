deployment "staging" {
  inputs = {
    account_id = "123456789012"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

deployment "prod" {
  inputs = {
    account_id = "987654321098"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

# Referencing upstream stack outputs
upstream_input "network_stack" {
  type = "stack"
  source = "app.terraform.io/hashicorp/linked-stacks/network_stack"
}

# Publish outputs for downstream stacks
publish_output "instance_name" {
  value = deployment.staging.instance_name
}

publish_output "hostname" {
  value = deployment.prod.hostname
}

