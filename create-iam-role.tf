provider "aws" {
  region = "your-region" // specify your AWS region here
}

data "aws_iam_policy_document" "ec2_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "openshift" {
  name               = "openshift"
  assume_role_policy = data.aws_iam_policy_document.ec2_role.json
}

output "role_name" {
  value = aws_iam_role.openshift.name
}

output "role_arn" {
  value = aws_iam_role.openshift.arn
}
