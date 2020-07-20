## backend staging
resource "digitalocean_droplet" "backend_staging" {
  ssh_keys           = [var.backend_staging_ssh_keys]
  image              = var.backend_staging_image
  region             = var.backend_staging_region
  size               = var.backend_staging_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.backend_staging_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
