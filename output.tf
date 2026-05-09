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
