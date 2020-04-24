## frontend
resource "digitalocean_droplet" "frontend" {
  ssh_keys           = [var.frontend_ssh_keys]
  image              = var.frontend_image
  region             = var.frontend_region
  size               = var.frontend_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.frontend_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
