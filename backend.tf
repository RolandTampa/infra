terraform {
  backend "s3" {
    bucket       = "my-bucketclass-2027"
    key          = "state/terraform.tfstate"
    use_lockfile = true
    region       = "us-east-1"
  }
}
