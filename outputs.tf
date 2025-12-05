output "argocd_server_ip" {
  description = "Argo CD endpoint ip address."
  value       = "http://${module.helm.argocd_server_ip}:443"
}

# output "argocd_initial_admin_password" {
#   description = "The initial admin password for Argo CD."
#   value       = "argocd password : module.helm.argocd_initial_admin_password"
# }

output "prometheus_grafana_ip" {
  description = "Prometheus Grafana endpoint ip address."
  value       = "http://${module.helm.prometheus_grafana_ip}:80"
}

# output "grafana_admin_password" {
#   description = "The admin password for Grafana."
#   value       = "grafana password : module.helm.grafana_admin_password"
# }