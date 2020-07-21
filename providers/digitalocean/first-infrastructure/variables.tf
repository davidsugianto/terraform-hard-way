variable "do_token" { default = "YOUR_DIGITALOCEAN_TOKEN" }

# Droplets Region
variable "do_ams2" {
  description = "Digital Ocean Amsterdam Data Center 2"
  default     = "ams2"
}

variable "do_ams3" {
  description = "Digital Ocean Amsterdam Data Center 3"
  default     = "ams3"
}

variable "do_blr1" {
  description = "Digital Ocean Bangalore Data Center 1"
  default     = "blr1"
}

variable "do_fra1" {
  description = "Digital Ocean Frankfurt Data Center 1"
  default     = "fra1"
}

variable "do_lon1" {
  description = "Digital Ocean London Data Center 1"
  default     = "lon1"
}

variable "do_nyc1" {
  description = "Digital Ocean New York Data Center 1"
  default     = "nyc1"
}

variable "do_nyc2" {
  description = "Digital Ocean New York Data Center 2"
  default     = "nyc2"
}

variable "do_nyc3" {
  description = "Digital Ocean New York Data Center 3"
  default     = "nyc3"
}

variable "do_sfo1" {
  description = "Digital Ocean San Francisco Data Center 1"
  default     = "sfo1"
}

variable "do_sgp1" {
  description = "Digital Ocean Singapore Data Center 1"
  default     = "sgp1"
}

variable "do_tor1" {
  description = "Digital Ocean Toronto Datacenter 1"
  default     = "tor1"
}

# Droplets Sizes
variable "do-1-1" {
  description = "Digital Ocean 1cpu, 1gb memory, and 25gb storage"
  default     = "s-1vcpu-1gb"
}

variable "do-1-2" {
  description = "Digital Ocean 1cpu, 2gb memory, and 50gb storage"
  default     = "s-1vcpu-2gb"
}

variable "do-1-3" {
  description = "Digital Ocean 1cpu, 3gb memory, and 20gb storage"
  default     = "s-1vcpu-3gb"
}

variable "do-3-1" {
  description = "Digital Ocean 3cpu, 1gb memory, and 60gb storage"
  default     = "s-3vcpu-1gb"
}

variable "do-2-2" {
  description = "Digital Ocean 2cpu, 2gb memory, and 60gb storage"
  default     = "s-2vcpu-2gb"
}

variable "do-2-4" {
  description = "Digital Ocean 2cpu, 4gb memory, and 80gb storage"
  default     = "s-2vcpu-4gb"
}

variable "do-4-8" {
  description = "Digital Ocean 4cpu, 8gb memory, and 160gb storage"
  default     = "s-4vcpu-8gb"
}

variable "do-6-16" {
  description = "Digital Ocean 6cpu, 16gb memory, and 320gb storage"
  default     = "s-6vcpu-16gb"
}

variable "do-8-32" {
  description = "Digital Ocean 8cpu, 32gb memory, and 640gb storage"
  default     = "s-8vcpu-32gb"
}

variable "do-12-48" {
  description = "Digital Ocean 12cpu, 48gb memory, and 960gb storage"
  default     = "s-12vcpu-48gb"
}

variable "do-16-64" {
  description = "Digital Ocean 16cpu, 64gb memory, and 1280gb storage"
  default     = "s-16vcpu-64gb"
}

variable "do-20-96" {
  description = "Digital Ocean 20cpu, 96gb memory, and 1920gb storage"
  default     = "s-20vcpu-96gb"
}

variable "do-24-128" {
  description = "Digital Ocean 24cpu, 128gb memory, and 2560gb storage"
  default     = "s-24vcpu-128gb"
}

# Droplets Os
variable "do_ubuntu1804" {
  description = "Default LTS"
  default     = "ubuntu-18-04-x64"
}

variable "do_centos7" {
  description = "Default Centos"
  default     = "centos-72-x64"
}

variable "do_coreos" {
  description = "Defaut Coreos"
  default     = "coreos-899.17.0"
}

