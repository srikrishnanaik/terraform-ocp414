provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_security_group_rule" "openshift_ingress_rules" {
  count           = 19 // number of ingress rules
  type            = "ingress"
  from_port       = element([22, 19531, 22623, 6443, 2379, 6641, 4789, 6081, 500, 4500, 50, 9000, 9000, 30000, 10250, 10257, 10259, 10250], count.index)
  to_port         = element([22, 19531, 22623, 6443, 2380, 6642, 4789, 6081, 500, 4500, 65553, 9999, 9999, 32767, 10250, 10257, 10259, 10250], count.index)
  protocol        = element(["tcp", "tcp", "tcp", "tcp", "tcp", "tcp", "udp", "udp", "udp", "udp", "50", "tcp", "udp", "tcp", "tcp", "tcp", "tcp", "tcp"], count.index)
  cidr_blocks     = ["${var.cidr}"] // specify your CIDR block here
  security_group_id = aws_security_group.openshift_sg.id
}
