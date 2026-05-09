variable "project_name" {
  description = "Project name used for tagging and naming resources"
  default     = "terraform-class"
}

variable "aws_region" {
  description = "AWS region for all resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  default     = "us-east-1a"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique)"
}

variable "iam_user_name" {
  description = "Name of the IAM user"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet (used by EKS)"
  default     = "10.0.2.0/24"
}

variable "availability_zone_2" {
  description = "Availability zone for the second public subnet"
  default     = "us-east-1b"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.31"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  default     = "t3.medium"
}

variable "eks_desired_size" {
  description = "Desired number of EKS worker nodes"
  type        = number
  default     = 2
}

variable "eks_min_size" {
  description = "Minimum number of EKS worker nodes"
  type        = number
  default     = 1
}

variable "eks_max_size" {
  description = "Maximum number of EKS worker nodes"
  type        = number
  default     = 3
}
