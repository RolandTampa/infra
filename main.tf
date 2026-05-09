module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  availability_zone    = var.availability_zone
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  availability_zone_2  = var.availability_zone_2
  project_name         = local.project
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
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = [module.vpc.public_subnet_id, module.vpc.public_subnet_id_2]
  cluster_version    = var.cluster_version
  node_instance_type = var.node_instance_type
  desired_size       = var.eks_desired_size
  min_size           = var.eks_min_size
  max_size           = var.eks_max_size
}
