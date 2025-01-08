# Child/Downstream Stack - Application Configuration
# This stack represents an application managed by a product team.
# It makes use of the VPC outputs published from the network stack.
# It doesn't actually provision infrastructure.

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }
}

provider "random" "this" {}

component "api" {
  source = "./api"

  inputs = {
    account_id = var.account_id
    region = var.region
    vpc_id = var.vpc_id
    subnet_public_id = var.subnet_public_id
    subnet_private_id = var.subnet_private_id
  }

  providers = {
    random = provider.random.this
  }
}

component "ui" {
  source = "./ui"

  inputs = {
    account_id = var.account_id
    region = var.region
    vpc_id = var.vpc_id
    subnet_public_id = var.subnet_public_id
    subnet_private_id = var.subnet_private_id
  }

  providers = {
    random = provider.random.this
  }
}

