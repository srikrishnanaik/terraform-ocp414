provider "aws" {
  region = "your-region" // specify your AWS region here
}

data "aws_iam_policies" "all" {}

output "openshift_policies" {
  value = [for policy in data.aws_iam_policies.all.names : policy if contains(policy, "openshift_policy")]
}
