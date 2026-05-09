project_name       = "terraform-class"
aws_region         = "us-east-1"
availability_zone  = "us-east-1a"

vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"

ami_id             = "ami-0ec10929233384c7f"
instance_type      = "t3.micro"

bucket_name        = "my-moduleclass2026"
iam_user_name      = "iamclass"

cluster_name       = "my-eks-cluster"
cluster_version    = "1.31"
node_instance_type = "t3.medium"
node_desired_size  = 2
node_min_size      = 1
node_max_size      = 3
