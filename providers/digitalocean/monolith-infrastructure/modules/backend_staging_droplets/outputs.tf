output "backend_staging_public_ip" {
  value = digitalocean_droplet.backend_staging.ipv4_address
}

output "backend_staging_private_ip" {
  value = digitalocean_droplet.backend_staging.ipv4_address_private
}

output "backend_staging_urn" {
  value = digitalocean_droplet.backend_staging.urn
}
