output "monitoring_public_ip" {
  value = digitalocean_droplet.monitoring.ipv4_address
}

output "monitoring_private_ip" {
  value = digitalocean_droplet.monitoring.ipv4_address_private
}

output "monitoring_urn" {
  value = digitalocean_droplet.monitoring.urn
}
