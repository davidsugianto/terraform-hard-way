provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_project" "project_name" {
  name = "PROJECT_NAME"
  description = "PROJECT_DESCRIPTION"
  purpose = "PROJECT_PURPOSE"
  environment = "production"
  resources = [
    module.droplet_module.infra1_urn,
    module.droplet_module.infra2_urn
  ] 
}

## Droplet Module
module "droplet_module" {
  source = "./modules/droplets"
  droplets_region = var.do_sgp1
  droplets_image = var.do_ubuntu1804
  ## server 1
  droplets_name_1 = "infra1"
  droplets_size_1 = var.do-2-2
  ## server 2
  droplets_name_2 = "infra2"
  droplets_size_2 = var.do-2-2
}
