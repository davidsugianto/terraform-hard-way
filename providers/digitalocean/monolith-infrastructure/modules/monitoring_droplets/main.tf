## monitoring
resource "digitalocean_droplet" "monitoring" {
  ssh_keys           = [var.monitoring_ssh_keys]
  image              = var.monitoring_image
  region             = var.monitoring_region
  size               = var.monitoring_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.monitoring_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
