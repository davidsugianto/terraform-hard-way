output "spaces_urn" {
  value = digitalocean_spaces_bucket.spaces.urn
}

output "bucket_name" {
  value = digitalocean_spaces_bucket.spaces.bucket_domain_name
}
