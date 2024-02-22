provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_security_group" "openshift_sg" {
  name        = "openshiftSG"
  description = "Security group for OpenShift Cluster"
  vpc_id      = var.vpc_id // specify your VPC ID here
}

data "aws_security_group" "openshift_sg_description" {
  filter {
    name   = "group-name"
    values = ["openshiftSG"]
  }
}

output "openshift_sg_id" {
  value = data.aws_security_group.openshift_sg_description.id
}
