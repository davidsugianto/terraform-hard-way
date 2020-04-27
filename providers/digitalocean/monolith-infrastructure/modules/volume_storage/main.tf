## volume
resource "digitalocean_volume" "volumes" {
  region                  = var.volume_region
  name                    = var.volume_name
  size                    = var.volume_size
  initial_filesystem_type = var.volume_filesystem
  description             = var.volume_desc
}

resource "digitalocean_volume_attachment" "foobar" {
  droplet_id = var.database_id
  volume_id  = digitalocean_volume.volumes.id
}
