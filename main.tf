module "consul" {
  source  = "app.terraform.io/erik-rygg/consul/azurerm"
  version = "0.0.1"
}

resource "null_resource" "null-resource" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo \"null resource\""
  }
}
