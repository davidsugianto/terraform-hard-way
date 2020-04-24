output "frontend_public_ip" {
  value = digitalocean_droplet.frontend.ipv4_address
}

output "frontend_private_ip" {
  value = digitalocean_droplet.frontend.ipv4_address_private
}

output "frontend_urn" {
  value = digitalocean_droplet.frontend.urn
}
