## database
resource "digitalocean_droplet" "database" {
  ssh_keys           = [var.database_ssh_keys]
  image              = var.database_image
  region             = var.database_region
  size               = var.database_size
  resize_disk        = true
  private_networking = true
  monitoring         = true
  name               = var.database_host
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}
