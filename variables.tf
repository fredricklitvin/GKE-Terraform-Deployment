variable region {
  type        = string
  default     = "us-central1"
  description = "region for the project"
}

variable project {
  type        = string
  default     = "brave-inn-477912-q1"
  description = "GCP project ID"
}

variable zone {
  type        = string
  default     = "us-central1-a"
  description = "zone for the project"
}

variable github_repository {
  type        = string
  default     = "https://github.com/fredricklitvin/k8s-project-helm.git"
  description = "GitHub repository URL"
}

variable github_branch {
  type        = string
  default     = "main"
  description = "GitHub repository branch"
}
variable github_path {
  type        = string
  default     = "k8s-app"
  description = "Path to the chart in the GitHub repository"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "k8s"
}

variable "node_count" {
  description = "The initial number of nodes in the GKE cluster."
  type        = number
  default     = 1
}

variable master_authorized_cidr_block {
  type        = string
  default     = "176.231.26.0/32"
  description = "The CIDR block to authorize for master access."
}
