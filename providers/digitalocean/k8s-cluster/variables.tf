# Token provider
variable "token" {
  default = "YOUR_API_TOKEN"
}

## Projects
variable "project_name" { default = "Edith Project" }
variable "project_desc" { default = "Kubernetes Cluster for Edith Project" }
variable "project_purpose" { default = "Kubernetes Edith Project" }
variable "project_env" { default = "Production" }

## Kubernetes Cluster Environment
variable "kube_name" {
  default = "edith-cluster"
}

variable "kube_cluster_name" {
  default = "edith-cluster-node"
}

variable "kube_cluster_count" {
  default = "3"
}

# Kubernetes Region
variable kube-do-nyc1 {
  default     = "nyc1"
}
variable kube-do-lon1 {
  default     = "lon1"
}
variable kube-do-ams3 {
  default     = "ams3"
}
variable kube-do-fra1 {
  default     = "fra1"
}
variable kube-do-blr1 {
  default     = "blr1"
}
variable kube-do-sgp1 {
  default     = "sgp1"
}


# Kubernetes version
variable kube-do-11_1-1 {
  default     = "1.11.1-do.1"
}
variable kube-do-11_5-1 {
  default     = "1.11.5-do.1"
}
variable kube-do-12_1-1 {
  default     = "1.12.1-do.1"
}
variable kube-do-12_3-1 {
  default     = "1.12.3-do.1"
}
variable kube-do-13_0-1 {
  default     = "1.13.0-do.1"
}
variable kube-do-14_1-1 {
  default     = "1.14.1-do.4"
}

# Node Sizes
variable node-s-1-2 {
  default     = "s-1vcpu-2gb"
}
variable node-s-1-3 {
  default     = "s-1vcpu-3gb"
}
variable node-s-2-2 {
  default     = "s-2vcpu-2gb"
}
variable node-s-3-1 {
  default     = "s-3vcpu-1gb"
}
variable node-s-2-4 {
  default     = "s-2vcpu-4gb"
}
variable node-s-4-8 {
  default     = "s-4vcpu-8gb"
}
variable node-s-6-16 {
  default     = "s-6vcpu-16gb"
}
variable node-s-8-32 {
  default     = "s-8vcpu-32gb"
}
variable node-c-2-4 {
  default     = "c-2"
}
variable node-c-4-8 {
  default     = "c-4"
}
variable node-c-8-16 {
  default     = "c-8"
}
variable node-c-16 {
  default     = "c-16"
}

# Droplets Os
variable "ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-18-04-x64"
}

variable "centos" {
  description = "Default Centos"
  default     = "centos-72-x64"
}

variable "coreos" {
  description = "Defaut Coreos"
  default     = "coreos-899.17.0"
}

