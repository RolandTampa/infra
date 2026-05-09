locals {
  project = var.project_name
  common_tags = {
    Project   = local.project
    ManagedBy = "terraform"
  }
}
