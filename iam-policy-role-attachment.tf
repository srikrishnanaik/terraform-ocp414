provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_iam_role_policy_attachment" "openshift_policy_attachment" {
  role       = "openshift" // specify your IAM role name here
  policy_arn = "arn:aws:iam::<Openshift policy arn>:policy/openshift_policy" // specify your Openshift policy ARN here
}
