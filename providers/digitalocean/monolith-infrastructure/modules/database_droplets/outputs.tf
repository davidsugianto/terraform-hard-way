output "database_public_ip" {
  value = digitalocean_droplet.database.ipv4_address
}

output "database_private_ip" {
  value = digitalocean_droplet.database.ipv4_address_private
}

output "database_urn" {
  value = digitalocean_droplet.database.urn
}

output "database_id" {
  value = digitalocean_droplet.database.id
}
