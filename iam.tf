resource "aws_iam_user" "ec2" {
  name = "ec2_user"
  tags = local.tags
}

resource "aws_iam_user_policy" "ec2_ro" {
  name   = "ec2_ro_policy"
  user   = aws_iam_user.ec2.name
  policy = file("./policies/ec2_ro.json")
}
