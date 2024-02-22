provider "aws" {
  region = "your-region" // specify your AWS region here
}

data "aws_vpcs" "selected" {
  tags = {
    Name = "Tag name of your vpc" // specify the tag name of your VPC here
  }
}

locals {
  vpc_id = data.aws_vpcs.selected.vpcs[0].id
}

data "aws_subnet_ids" "private" {
  vpc_id = local.vpc_id

  tags = {
    Name = "Tag name of your private subnet" // specify the tag name of your private subnet here
  }
}

output "vpc_id" {
  value = local.vpc_id
}

output "private_subnet_ids" {
  value = data.aws_subnet_ids.private.ids
}

output "vpc_cidr_block" {
  value = data.aws_vpcs.selected.vpcs[0].cidr_block
}
