provider "aws" {
  region = var.region
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "erik-rygg"

    workspaces {
      name = "tfe-workspace-example"
    }
  }
}

module "vault" {
  source  = "app.terraform.io/erik-rygg/vault/aws"
  version = "1.0.0"
}