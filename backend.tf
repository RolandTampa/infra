terraform {
  backend "s3" {
    bucket       = "my-bucketclass-2027"
    key          = "infra/terraform.tfstate"
    use_lockfile = true
    region       = "us-east-1"
  }
}
