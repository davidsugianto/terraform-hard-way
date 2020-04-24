provider "digitalocean" {
  token = var.token
}

## ssh_key access
resource "digitalocean_ssh_key" "ssh" {
  name       = "my ssh key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "digitalocean_project" "project" {
  name        = var.project_name
  description = var.project_desc
  purpose     = var.project_purpose
  environment = var.project_env
  resources = [
    module.loadbalancer.loadbalancer_urn,
    module.frontend.frontend_urn,
    module.backend_staging.backend_staging_urn,
    module.backend_production.backend_production_urn,
    module.database.database_urn,
    module.gitlab_runner_frontend.gitlab_runner_frontend_urn,
    module.gitlab_runner_backend.gitlab_runner_backend_urn,
    module.monitoring.monitoring_urn,
    module.spaces.spaces_urn,
    module.domain_module.domain_urn,
  ]
}

## Create Loadbalancer Droplets with modules
module "loadbalancer" {
  source  = "./modules/loadbalancer_droplets"
  loadbalancer_image = var.centos7
  loadbalancer_region = var.do_sgp1
  loadbalancer_size = var.do-4-8
  loadbalancer_host = var.host_lb
  loadbalancer_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Frontend Droplets with modules
module "frontend" {
  source  = "./modules/frontend_droplets"
  frontend_image = var.ubuntu1804
  frontend_region = var.do_sgp1
  frontend_size = var.do-4-8
  frontend_host = var.host_fe
  frontend_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Backend Staging Droplets with modules
module "backend_staging" {
  source  = "./modules/backend_staging_droplets"
  backend_staging_image = var.ubuntu1804
  backend_staging_region = var.do_sgp1
  backend_staging_size = var.do-4-8
  backend_staging_host = var.host_be_staging
  backend_staging_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Backend Production Droplets with modules
module "backend_production" {
  source  = "./modules/backend_production_droplets"
  backend_production_image = var.ubuntu1804
  backend_production_region = var.do_sgp1
  backend_production_size = var.do-4-8
  backend_production_host = var.host_be_production
  backend_production_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Database Droplets with modules
module "database" {
  source  = "./modules/database_droplets"
  database_image = var.ubuntu1804
  database_region = var.do_sgp1
  database_size = var.do-2-2
  database_host = var.host_db
  database_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Gitlab Runner Frontend Droplets with modules
module "gitlab_runner_frontend" {
  source  = "./modules/frontend_runner_droplets"
  gitlab_runner_frontend_image = var.ubuntu1804
  gitlab_runner_frontend_region = var.do_sgp1
  gitlab_runner_frontend_size = var.do-4-8
  gitlab_runner_frontend_host = var.host_runner_fe
  gitlab_runner_frontend_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Gitlab Runner Backend Droplets with modules
module "gitlab_runner_backend" {
  source  = "./modules/backend_runner_droplets"
  gitlab_runner_backend_image = var.ubuntu1804
  gitlab_runner_backend_region = var.do_sgp1
  gitlab_runner_backend_size = var.do-4-8
  gitlab_runner_backend_host = var.host_runner_be
  gitlab_runner_backend_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create Monitoring Droplets with modules
module "monitoring" {
  source  = "./modules/monitoring_droplets"
  monitoring_image = var.ubuntu1804
  monitoring_region = var.do_sgp1
  monitoring_size = var.do-2-2
  monitoring_host = var.host_monitoring
  monitoring_ssh_keys = digitalocean_ssh_key.ssh.fingerprint
}

## Create spaces with modules
module "spaces" {
  source  = "./modules/spaces_storage"
  spaces_name = var.spaces_name
  spaces_region = var.do_sgp1
  spaces_allow_origin = var.spaces_allow_origin
}

## Setting Domain and subdomain in Digitalocean with modules
module "domain_module" {
  source  = "./modules/loadbalancer_domain"
  loadbalancer_address = module.loadbalancer.loadbalancer_public_ip
  frontend_address = module.frontend.frontend_public_ip
  backend_staging_address = module.backend_staging.backend_staging_public_ip
  backend_production_address = module.backend_production.backend_production_public_ip
  lets_domain_name = var.acme_domain_name
  lets_domain_api = var.acme_domain_api
  lets_domain_type_a = var.acme_domain_type_a
  lets_domain_ttl = var.acme_domain_ttl
}

