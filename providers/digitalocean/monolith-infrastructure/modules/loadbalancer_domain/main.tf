resource "digitalocean_domain" "domain" {
  name       = var.lets_domain_name
  ip_address = var.loadbalancer_address
}

## Add Wildcard Domain on api apps
resource "digitalocean_record" "api_staging_domain" {
  domain = digitalocean_domain.domain.name
  type   = var.lets_domain_type_a
  name   = var.lets_domain_api
  ttl    = var.lets_domain_ttl
  value  = var.backend_staging_address
}

## Add Wildcard Domain api production apps
resource "digitalocean_record" "api_production_domain" {
  domain = digitalocean_domain.domain.name
  type   = var.lets_domain_type_a
  name   = var.lets_domain_api
  ttl    = var.lets_domain_ttl
  value  = var.backend_production_address
}
