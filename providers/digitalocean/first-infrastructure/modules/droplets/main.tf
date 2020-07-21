resource "digitalocean_droplet" "infra1" {
  name      = var.droplets_name_1
  size      = var.droplets_size_1
  image     = var.droplets_image
  region    = var.droplets_region
  resize_disk = true
  private_networking = true
  monitoring = true
}

resource "digitalocean_droplet" "infra2" {
  name      = var.droplets_name_2
  size      = var.droplets_size_2
  image     = var.droplets_image
  region    = var.droplets_region
  resize_disk = true
  private_networking = true
  monitoring = true
}
