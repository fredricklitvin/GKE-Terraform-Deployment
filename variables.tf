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