provider "aws" {
  region = "your-region" // specify your AWS region here
}

data "aws_iam_policy_document" "openshift_policy" {
  statement {
    actions = [
      "action1",
      "action2" // Add the actions allowed by your policy here
    ]

    resources = [
      "resource1",
      "resource2" // Add the resources allowed by your policy here
    ]
  }
}

resource "aws_iam_policy" "openshift_policy" {
  name        = "openshift_policy"
  policy      = data.aws_iam_policy_document.openshift_policy.json
}

output "policy_arn" {
  value = aws_iam_policy.openshift_policy.arn
}
