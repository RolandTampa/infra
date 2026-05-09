output "iam_user_arn" {
  value = aws_iam_user.example.arn
}

output "iam_user_name" {
  value = aws_iam_user.example.name
}

output "iam_user_id" {
  value = aws_iam_user.example.unique_id
}
