terraform {
  required_providers {
    argocd = {
      source  = "argoproj-labs/argocd"
      version = "7.12.0"
    }
  }
}


resource "argocd_application" "my_app" {
  metadata {
    name      = "my-app"   
    namespace = "argocd"   
  }
    spec {
        project = "default"
    
        source {
        repo_url        = var.github_repository
        target_revision = var.github_branch     
        path            = var.github_path
        helm {
            value_files = ["values.yaml"]
        }
    }
        destination {
        server    = "https://kubernetes.default.svc"
        namespace = "myapp"
    }
        sync_policy {
        automated {
            prune = true
            self_heal = true
        }
        sync_options = ["CreateNamespace=true"]
    }

}
}
