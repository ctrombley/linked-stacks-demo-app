# Child/Downstream Stack - Application Configuration
# This stack represents an application managed by a product team.
# It makes use of the VPC outputs published from the network stack.
# It doesn't actually provision infrastructure.

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

component "api" {
  description = "API tier managed by product team"

  source = "./api"

  inputs = {
    account_id = var.account_id
    region = var.region
  }

  providers = {
    random = provider.random.this
  }
}

component "ui" {
  description = "UI tier managed by product team"

  source = "./ui"

  inputs = {
    account_id = var.account_id
    region = var.region
  }

  providers = {
    random = provider.random.this
  }
}
