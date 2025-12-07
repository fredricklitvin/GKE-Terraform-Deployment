variable github_repository {
  type        = string
  default     = "https://github.com/bitnami/charts.git"
  description = "GitHub repository URL"
}
variable github_branch {
  type        = string
  default     = "main"
  description = "GitHub repository branch"
}
variable github_path {
  type        = string
  default     = "template/CHART_NAME"
  description = "Path to the chart in the GitHub repository"
}