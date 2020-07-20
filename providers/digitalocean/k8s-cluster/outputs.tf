## Kubernetes Cluster
output "cluster-id" {
  value = "${digitalocean_kubernetes_cluster.cluster.id}"
}
output "cluster-subnet" {
  value = "${digitalocean_kubernetes_cluster.cluster.cluster_subnet}"
}
output "cluster-endpoint" {
  value = "${digitalocean_kubernetes_cluster.cluster.endpoint}"
}
output "cluster-public-ip" {
  value = "${digitalocean_kubernetes_cluster.cluster.ipv4_address}"
}
output "cluster-status" {
  value = "${digitalocean_kubernetes_cluster.cluster.status}"
}
output "cluster-config" {
  value = "${digitalocean_kubernetes_cluster.cluster.kube_config}"
}

## External LoadBalancer
output "loadbalancer_ip_public" {
  value = "${digitalocean_droplet.ext_loadbalancer.ipv4_address}"
}
output "loadbalancer_ip_private" {
  value = "${digitalocean_droplet.ext_loadbalancer.ipv4_address_private}"
}
