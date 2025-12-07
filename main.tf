module "service" {
  source = "./modules/services"
  project = var.project
  
  }
module network {
  source = "./modules/network"
  region = var.region
}

module "gke" {
  source = "./modules/gke"
  project = var.project
  vpc_network_id = module.network.vpc_network_id
  private_subnet_id = module.network.private_subnet_id
  secondary_ip_range_1 = module.network.private_subnet_ip_range_1
  secondary_ip_range_0 = module.network.private_subnet_ip_range_0
  region = var.region
}

module "helm" {
  source = "./modules/helm"
  depends_on = [module.gke]
  github_repository = var.github_repository
  k8s_path = "k8s-app"

}


module "service_account" {
  source = "./modules/service_account"
  project = var.project
  region = var.region
  github_repository = var.github_repository
  project_suffix = "v15"

}

module "argocd" {
  source = "./modules/argocd"
  depends_on = [module.helm]
  github_repository = var.github_repository
  github_branch = var.github_branch
  github_path = var.github_path
}
