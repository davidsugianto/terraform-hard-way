output "domain_urn" {
  value = digitalocean_domain.domain.urn
}
output "primary_domain" {
  value = digitalocean_domain.domain.name
}
output "api_staging_domain" {
  value = digitalocean_record.api_staging_domain.fqdn
}
output "api_production_domain" {
  value = digitalocean_record.api_production_domain.fqdn
}
