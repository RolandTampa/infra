variable "project_name" {
  description = "Project name for tagging resources"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-moduleclass2026"
}
