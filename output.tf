output "public_ip" {
  value = module.ec2.public_ip
}

output "private_ip" {
  value = module.ec2.private_ip
}

output "bucket_name" {
  value = module.s3.bucket_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "iam_user_arn" {
  value = module.iam.iam_user_arn
}

output "iam_user_name" {
  value = module.iam.iam_user_name
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  value = module.eks.cluster_version
}

output "eks_cluster_ca_certificate" {
  value     = module.eks.cluster_ca_certificate
  sensitive = true
}

output "eks_cluster_role_arn" {
  value = module.eks.cluster_role_arn
}

output "eks_node_role_arn" {
  value = module.eks.node_role_arn
}

output "eks_node_group_arn" {
  value = module.eks.node_group_arn
}
