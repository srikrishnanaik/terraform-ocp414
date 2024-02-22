resource "aws_lb" "openshift_master_elb" {
  name               = "openshift-master-elb"
  load_balancer_type = "network"
  internal           = true
  subnets            = ["subnet-1", "subnet-2", "subnet-3"] // Enter your private subnet IDs here
  security_groups    = ["sg-1234567890"] // specify your security group ID here
  tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
}
