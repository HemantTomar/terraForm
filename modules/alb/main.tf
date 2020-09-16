


resource "aws_lb" "my-aws-alb" {
  name     = "my-test-alb"
  internal = false

  security_groups = [
    aws_security_group.my-alb-sg.id,
  ]

  subnets = [
    var.subnet1,
    var.subnet2,
  ]

  tags = {
    Name = "my-test-alb"
  }

  ip_address_type    = "ipv4"
  load_balancer_type = "application"
}
