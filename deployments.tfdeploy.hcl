deployment "staging" {
  inputs = {
    account_id = "123456789012"
    region     = "us-west-1"

    vpc_id             = upstream_input.network_stack.staging_vpc_id
    subnet_public_id   = upstream_input.network_stack.staging_subnet_public_id
    subnet_private_id  = upstream_input.network_stack.staging_subnet_private_id
  }
}

deployment "prod" {
  inputs = {
    account_id = "987654321098"
    region     = "us-west-1"

    vpc_id             = upstream_input.network_stack.prod_vpc_id
    subnet_public_id   = upstream_input.network_stack.prod_subnet_public_id
    subnet_private_id  = upstream_input.network_stack.prod_subnet_private_id
  }
}

# Referencing upstream stack outputs
upstream_input "network_stack" {
  type = "stack"
  source = "app.terraform.io/hashicorp/linked-stacks/network_stack"
}

# Publish outputs for downstream stacks
publish_output "staging_api_instance_id" {
  value = deployment.staging.api_instance_id
}

publish_output "staging_api_hostname" {
  value = deployment.staging.api_hostname
}

publish_output "staging_ui_instance_id" {
  value = deployment.staging.ui_instance_id
}

publish_output "staging_ui_hostname" {
  value = deployment.staging.ui_hostname
}

publish_output "prod_api_instance_id" {
  value = deployment.prod.api_instance_id
}

publish_output "prod_api_hostname" {
  value = deployment.prod.api_hostname
}

publish_output "prod_ui_instance_id" {
  value = deployment.prod.ui_instance_id
}

publish_output "prod_ui_hostname" {
  value = deployment.prod.ui_hostname
}
