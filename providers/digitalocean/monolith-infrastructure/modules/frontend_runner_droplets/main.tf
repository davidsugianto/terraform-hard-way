## frontend gitlab runner
resource "digitalocean_droplet" "frontend_runner" {
  ssh_keys           = [var.gitlab_runner_frontend_ssh_keys]
  image              = var.gitlab_runner_frontend_image
  region             = var.gitlab_runner_frontend_region
  size               = var.gitlab_runner_frontend_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.gitlab_runner_frontend_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
