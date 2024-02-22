resource "aws_lb_listener" "listener_6443" {
  load_balancer_arn = "<loadbalancer-arn of master-elb>"
  port              = 6443
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = "<targetgroup-arn of worker-targets-6443>"
  }
}

resource "aws_lb_listener" "listener_22623" {
  load_balancer_arn = "<loadbalancer-arn of master-elb>"
  port              = 22623
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = "<targetgroup-arn of worker-targets-22623>"
  }
}
