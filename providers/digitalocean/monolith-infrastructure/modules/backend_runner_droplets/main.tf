## backend gitlab runner
resource "digitalocean_droplet" "backend_runner" {
  ssh_keys           = [var.gitlab_runner_backend_ssh_keys]
  image              = var.gitlab_runner_backend_image
  region             = var.gitlab_runner_backend_region
  size               = var.gitlab_runner_backend_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.gitlab_runner_backend_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
