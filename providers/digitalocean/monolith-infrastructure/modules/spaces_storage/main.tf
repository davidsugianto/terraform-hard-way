## spaces
resource "digitalocean_spaces_bucket" "spaces" {
  name = var.spaces_name
  region = var.spaces_region
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST", "DELETE"]
    allowed_origins = [var.spaces_allow_origin]
  }
}
