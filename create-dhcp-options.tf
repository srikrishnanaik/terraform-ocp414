provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_ec2_dhcp_options" "example" {
  domain_name          = "<Your Base domain>" // specify your base domain here
  domain_name_servers  = ["<Your DNS Server IP>"] // specify your DNS server IP here
}

resource "aws_vpc_dhcp_options_association" "example" {
  vpc_id          = aws_vpc.example.id
  dhcp_options_id = aws_ec2_dhcp_options.example.id
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16" // Specify your VPC CIDR block here
}
