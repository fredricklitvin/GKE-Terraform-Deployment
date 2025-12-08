

resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true

  timeout = 300

  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }
  
}


resource "kubernetes_config_map" "grafana_k8s_dashboard" {
  metadata {
    name      = "grafana-k8s-kubernetes-cluster"
    namespace = "default" 
    labels = {
      grafana_dashboard = "1"         
    }
  }

  data = {
    "k8s-cluster-dashboard.json" = file("${path.module}/15661_rev2.json")
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = "monitoring"
  create_namespace = true
  values = [
    file("${path.module}/prometheus-values.yaml")
  ]
  timeout = 300
  
}

resource "helm_release" "loki" {
  name             = "loki"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "loki-stack"
  namespace        = "monitoring"
  create_namespace = true

  timeout = 300

    set {
    name  = "grafana.enabled"
    value = "false"
  }

  set {
    name  = "promtail.enabled"
    value = "true"
  }
  
}