output "gitlab_runner_frontend_public_ip" {
  value = digitalocean_droplet.frontend_runner.ipv4_address
}

output "gitlab_runner_frontend_private_ip" {
  value = digitalocean_droplet.frontend_runner.ipv4_address_private
}

output "gitlab_runner_frontend_urn" {
  value = digitalocean_droplet.frontend_runner.urn
}
