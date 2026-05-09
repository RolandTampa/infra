module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  project_name       = local.project
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.vpc.ec2_sg_id
  project_name  = local.project
}

module "s3" {
  source       = "./modules/s3"
  bucket_name  = var.bucket_name
  project_name = local.project
}

module "iam" {
  source        = "./modules/iam"
  iam_user_name = var.iam_user_name
  project_name  = local.project
}

module "eks" {
  source             = "./modules/eks"
  project_name       = local.project
  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  subnet_ids         = [module.vpc.public_subnet_id]
  node_instance_type = var.node_instance_type
  node_desired_size  = var.node_desired_size
  node_min_size      = var.node_min_size
  node_max_size      = var.node_max_size
}
