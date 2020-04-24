output "backend_production_public_ip" {
  value = digitalocean_droplet.backend_production.ipv4_address
}

output "backend_production_private_ip" {
  value = digitalocean_droplet.backend_production.ipv4_address_private
}

output "backend_production_urn" {
  value = digitalocean_droplet.backend_production.urn 
}
