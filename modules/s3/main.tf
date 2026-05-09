resource "aws_s3_bucket" "class" {
  bucket = var.bucket_name

  tags = {
    Name = local.s3_tag
  }
}
