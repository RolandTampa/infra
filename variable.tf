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
  default     = "ami-0ec10929233384c7f"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "bucket_name" {
  description = "S3 bucket name"
  default     = "my-moduleclass2026"
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  default     = "iamclass"
}
