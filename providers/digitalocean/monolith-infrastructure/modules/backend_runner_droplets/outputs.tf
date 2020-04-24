output "gitlab_runner_backend_public_ip" {
  value = digitalocean_droplet.backend_runner.ipv4_address
}

output "gitlab_runner_backend_private_ip" {
  value = digitalocean_droplet.backend_runner.ipv4_address_private
}

output "gitlab_runner_backend_urn" {
  value = digitalocean_droplet.backend_runner.urn
}
