output "loadbalancer_public_ip" {
  value       = digitalocean_droplet.loadbalancer.ipv4_address
  description = "The public IP address of the Load Balancer server."
}

output "loadbalancer_private_ip" {
  value       = digitalocean_droplet.loadbalancer.ipv4_address_private
  description = "The private IP address of the Load Balancer server."
}

output "loadbalancer_urn" {
  value       = digitalocean_droplet.loadbalancer.urn
}
