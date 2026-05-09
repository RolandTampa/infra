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
  description = "Availability zone for the public subnet"
}
