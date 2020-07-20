provider "cloudflare" {
  version = "~> 2.0"
  email      = "terraform@example.com"
  api_key    = var.cloudflare_api_key
  account_id = var.cloudflare_account_id
}

module "cloudflare_record_module" {
  source = "./modules/dns"
  loadbalancer_address = var.loadbalancer_server
  cloudflare_domain = var.cloudflare_domain
  cloudflare_api_name = "api"
  cloudflare_spaces_name = "spaces"
  cloudflare_type_a = "A"
  cloudflare_type_cname = "CNAME"
  cloudflare_ttl = 3600
  cloudflare_spaces_endpoint = var.spaces_endpoint
}
