deployment "staging" {
  component = "ui"
  environment = "staging"
  inputs = {
    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

deployment "prod" {
  component = "ui"
  environment = "prod"
  inputs = {
    vpc_id             = var.vpc_id
    subnet_private_id  = var.subnet_private_id
    subnet_public_id   = var.subnet_public_id
  }
}

