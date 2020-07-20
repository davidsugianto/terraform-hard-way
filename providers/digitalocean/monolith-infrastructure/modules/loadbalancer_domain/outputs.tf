output "domain_urn" {
  value = digitalocean_domain.domain.urn
}
output "primary_domain" {
  value = digitalocean_domain.domain.name
}
output "api_domain" {
  value = digitalocean_record.api_domain.fqdn
}
output "spaces_domain" {
  value = digitalocean_record.spaces_domain.fqdn
}
