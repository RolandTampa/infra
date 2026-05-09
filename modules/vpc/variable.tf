variable "project_name" {
  description = "Project name for tagging resources"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "availability_zone" {
  description = "Availability zone for the first public subnet"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet (used by EKS)"
}

variable "availability_zone_2" {
  description = "Availability zone for the second public subnet"
}
