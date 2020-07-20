## backend production
resource "digitalocean_droplet" "backend_production" {
  ssh_keys           = [var.backend_production_ssh_keys]
  image              = var.backend_production_image
  region             = var.backend_production_region
  size               = var.backend_production_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.backend_production_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
