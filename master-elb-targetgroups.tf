resource "aws_lb_target_group" "master_targets_6443" {
  name     = "master-targets-6443"
  protocol = "TCP"
  port     = 6443
  vpc_id   = var.vpc_id // specify your VPC ID here
}

resource "aws_lb_target_group" "master_targets_22623" {
  name     = "master-targets-22623"
  protocol = "TCP"
  port     = 22623
  vpc_id   = var.vpc_id // specify your VPC ID here
}
