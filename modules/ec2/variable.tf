variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0ec10929233384c7f"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance into"
}

variable "sg_id" {
  description = "Security group ID to attach to the instance"
}
