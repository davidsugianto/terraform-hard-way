provider "digitalocean" {
  token = var.token
}

## Project
resource "digitalocean_project" "project" {
  name        = var.project_name
  description = var.project_desc
  purpose     = var.project_purpose
  environment = var.project_env
  resources = [
    digitalocean_kubernetes_cluster.cluster.id,
    digitalocean_droplet.ext_loadbalancer.urn,
    digitalocean_volume.volume.urn,
    digitalocean_spaces_bucket.spaces.urn,
    module.domain_module.domain_urn
  ]
}

## Kubernetes Cluster
resource "digitalocean_kubernetes_cluster" "cluster" {
  name = var.kube_name
  region = var.kube-do-sgp1
  version = var.kube-do-14_1-1

  node_pool {
    name = var.kube_cluster_name
    size = var.node-s-4-8
    auto_scale = true
    node_count = var.kube_cluster_count
    min_nodes  = 3
    max_nodes  = 10
  }
}

## Kubernetes Provider
provider "kubernetes" {
  host = digitalocean_kubernetes_cluster.cluster.endpoint
  token = digitalocean_kubernetes_cluster.cluster.kube_config[0].token
  client_certificate = base64decode(digitalocean_kubernetes_cluster.cluster.kube_config[0].client_certificate)
  client_key = base64decode(digitalocean_kubernetes_cluster.cluster.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
}

## Kubernetes Export kubeconfig
resource "local_file" "kubeconfig" {
  content = digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
  filename = "${path.module}/config/kubeconfig"
}

## External Loadbalancer
resource "digitalocean_droplet" "ext_loadbalancer" {
  name   = "edith-loadbalancer"
  size   = "s-2vcpu-2gb"
  image  = "ubuntu-18-04-x64"
  region = "sgp1"
  resize_disk = true
  private_networking = true
  monitoring = true
  provisioner "file" {
    source      = file("${path.module}/files/authorized_keys")
    destination = "~/.ssh/authorized_keys"
  }
}

## Block Storage
resource "digitalocean_volume" "volume" {
  region = "sgp1"
  name = "cluster-volumes"
  size = 100
  initial_filesystem_type = "ext4"
  description = "kubernetes cluster volume"
}

resource "digitalocean_volume_attachment" "attachment" {
  droplet_id = digitalocean_kubernetes_cluster.cluster.id
  volume_id  = digitalocean_volume.volume.id
}

## Object Storage
resource "digitalocean_spaces_bucket" "spaces" {
  name = "edithspaces"
  region = "sgp1"
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["*"]
    allowed_origins = ["https://*.edith.com"]
    max_age_seconds = 3000
  }
}

## Domain Digitalocean provider
module "domain_module" {
  source = "./modules/domain"
  loadbalancer_address = digitalocean_droplet.ext_loadbalancer.ipv4_address
  lets_domain_name = "edith.com"
  lets_domain_ttl = "3600"
  ## api
  lets_domain_api = "api"
  lets_domain_type_a = "A"
  ## spaces
  lets_domain_spaces = "spaces"
  lets_domain_type_cname = "CNAME"
  lets_domain_spaces_alias = "${digitalocean_spaces_bucket.spaces.bucket_domain_name}"
}
