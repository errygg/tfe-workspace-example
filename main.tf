provider "aws" {
  region = "${var.region}"
}
module "vault" {
  source  = "app.terraform.io/erik-rygg/vault/aws"
  version = "0.1.1"
}