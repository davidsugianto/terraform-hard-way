## loadbalancer
resource "digitalocean_droplet" "loadbalancer" {
  ssh_keys           = [var.loadbalancer_ssh_keys]
  image              = var.loadbalancer_image
  region             = var.loadbalancer_region
  size               = var.loadbalancer_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.loadbalancer_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
