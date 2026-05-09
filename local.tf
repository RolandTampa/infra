locals {
  project = "terraform-class"
  common_tags = {
    Project   = local.project
    ManagedBy = "terraform"
  }
}
