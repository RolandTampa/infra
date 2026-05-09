output "bucket_name" {
  value = aws_s3_bucket.class.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.class.arn
}

output "bucket_id" {
  value = aws_s3_bucket.class.id
}
