# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

resource "random_id" "instance_id" {
  prefix = "i-"
  length = 8
}

resource "random_pet" "hostname" {}

