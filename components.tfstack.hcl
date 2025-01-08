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

  providers = {
    random = provider.random.this
  }
}

component "ui" {
  source = "./ui"

  providers = {
    random = provider.random.this
  }
}

