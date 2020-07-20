## IP ADDRESS

output "loadbalancer_ip_public" {
  value = module.loadbalancer.loadbalancer_public_ip
}
output "loadbalancer_ip_private" {
  value = module.loadbalancer.loadbalancer_private_ip
}

output "frontend_ip_public" {
  value = module.frontend.frontend_public_ip
}
output "frontend_ip_private" {
  value = module.frontend.frontend_private_ip
}

output "backend_staging_ip_public" {
  value = module.backend_staging.backend_staging_public_ip
}
output "backend_staging_ip_private" {
  value = module.backend_staging.backend_staging_private_ip
}

output "backend_production_ip_public" {
  value = module.backend_production.backend_production_public_ip
}
output "backend_production_ip_private" {
  value = module.backend_production.backend_production_private_ip
}

output "database_ip_public" {
  value = module.database.database_public_ip
}
output "database_ip_private" {
  value = module.database.database_private_ip
}

output "gitlal_runner_fe_ip_public" {
  value = module.gitlab_runner_frontend.gitlab_runner_frontend_public_ip
}
output "gitlal_runner_fe_ip_private" {
  value = module.gitlab_runner_frontend.gitlab_runner_frontend_private_ip
}

output "gitlal_runner_be_ip_public" {
  value = module.gitlab_runner_backend.gitlab_runner_backend_public_ip
}
output "gitlal_runner_be_ip_private" {
  value = module.gitlab_runner_backend.gitlab_runner_backend_private_ip
}

output "monitoring_ip_public" {
  value = module.monitoring.monitoring_public_ip
}
output "monitoring_ip_private" {
  value = module.monitoring.monitoring_private_ip
}

## URL
output "primary_url" {
  value = module.domain_module.primary_domain
}
output "api_url" {
  value = module.domain_module.api_domain
}
output "spaces_url" {
  value = module.domain_module.spaces_domain
}

## SPACES
output "bucket_spaces_name" {
  value = module.spaces.bucket_name
}

