resource "cloudflare_record" "api_record" {
  domain = var.cloudflare_domain
  name   = var.cloudflare_api_name
  value  = var.loadbalancer_address
  type   = var.cloudflare_type_a
  ttl    = var.cloudflare_ttl
}

resource "cloudflare_record" "spaces_record" {
  domain = var.cloudflare_domain
  name   = var.cloudflare_spaces_name
  value  = var.cloudflare_spaces_endpoint
  type   = var.cloudflare_type_cname
  ttl    = var.cloudflare_ttl
}
