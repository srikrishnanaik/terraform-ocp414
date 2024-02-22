provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_iam_instance_profile" "openshift_instance_profile" {
  name = "openshift"
}

resource "aws_iam_instance_profile_role_attachment" "openshift_instance_profile_attachment" {
  instance_profile = aws_iam_instance_profile.openshift_instance_profile.name
  role             = "openshift" // specify your IAM role name here
}
