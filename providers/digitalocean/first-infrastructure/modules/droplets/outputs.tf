output "infra1_public_ip" { value = digitalocean_droplet.infra1.ipv4_address }
output "infra1_private_ip" { value = digitalocean_droplet.infra1.ipv4_address_private }
output "infra1_urn" { value = digitalocean_droplet.infra1.urn }

output "infra2_public_ip" { value = digitalocean_droplet.infra2.ipv4_address }
output "infra2_private_ip" { value = digitalocean_droplet.infra2.ipv4_address_private }
output "infra2_urn" { value = digitalocean_droplet.infra2.urn }
