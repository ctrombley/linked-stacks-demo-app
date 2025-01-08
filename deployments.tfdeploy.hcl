deployment "staging" {
  component = "ui"
  environment = "staging"
  inputs = {
    account_id = "123456789012"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

deployment "prod" {
  component = "ui"
  environment = "prod"
  inputs = {
    account_id = "987654321098"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

deployment "staging" {
  component = "api"
  environment = "staging"
  inputs = {
    account_id = "123456789012"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

deployment "prod" {
  component = "api"
  environment = "prod"
  inputs = {
    account_id = "987654321098"
    region     = "us-west-1"

    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}
