output "argocd_server_ip" {
  description = "Argo CD endpoint ip address."
  value       = "http://${module.helm.argocd_server_ip}:443"
}


output "prometheus_grafana_ip" {
  description = "Prometheus Grafana endpoint ip address."
  value       = "http://${module.helm.prometheus_grafana_ip}:80"
}

