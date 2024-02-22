provider "aws" {
  region = "us-gov-west-1" // specify your AWS region here
}

resource "aws_vpc_endpoint" "elb_endpoint" {
  vpc_id              = var.vpc_id // specify your VPC ID here
  service_name        = "com.amazonaws.us-gov-west-1.elasticloadbalancing"
  vpc_endpoint_type   = "Interface"
}

resource "aws_vpc_endpoint" "s3_endpoint" {
  vpc_id              = var.vpc_id // specify your VPC ID here
  service_name        = "com.amazonaws.us-gov-west-1.s3"
  vpc_endpoint_type   = "Interface"
}

resource "aws_vpc_endpoint" "ec2_endpoint" {
  vpc_id              = var.vpc_id // specify your VPC ID here
  service_name        = "com.amazonaws.us-gov-west-1.ec2"
  vpc_endpoint_type   = "Interface"
}
