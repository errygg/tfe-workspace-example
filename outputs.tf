output "bastion_ip" {
  value = module.vault.bastion_ips_public
}

output "private_key" {
  value = module.vault.private_key_pem
}

output "consul_dns" {
  value = module.vault.consul_lb_dns
}

output "vault_dns" {
  value = module.vault.vault_lb_dns
}