resource "aws_iam_user" "example" {
  name = var.iam_user_name

  tags = {
    Name = local.iam_tag
  }
}
