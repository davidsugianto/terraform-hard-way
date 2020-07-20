resource "digitalocean_domain" "domain" {
  name       = var.lets_domain_name
  ip_address = var.loadbalancer_address
}

## Add Wildcard Domain on API
resource "digitalocean_record" "api_domain" {
  domain = digitalocean_domain.domain.name
  type   = var.lets_domain_type_a
  name   = var.lets_domain_api
  ttl    = var.lets_domain_ttl
  value  = var.loadbalancer_address
}

## Add Wildcard Domain spaces for object storage
resource "digitalocean_record" "spaces_domain" {
  domain = digitalocean_domain.domain.name
  type   = var.lets_domain_type_cname
  name   = var.lets_domain_spaces
  ttl    = var.lets_domain_ttl
  value  = var.lets_domain_spaces_endpoint
}
