variable "project_name" {
  description = "Project name for tagging and naming resources"
}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster and node group (minimum 2 AZs)"
  type        = list(string)
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS managed node group"
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}
