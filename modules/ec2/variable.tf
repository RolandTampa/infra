variable "project_name" {
  description = "Project name for tagging resources"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance into"
}

variable "sg_id" {
  description = "Security group ID to attach to the instance"
}
