provider "aws" {
  region = "your-region" // specify your AWS region here
}

data "aws_ec2_dhcp_options" "example" {}

resource "aws_vpc_dhcp_options_association" "example" {
  vpc_id          = var.vpc_id // specify your VPC ID here
  dhcp_options_id = data.aws_ec2_dhcp_options.example.id
}
