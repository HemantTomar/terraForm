
resource "aws_security_group" "my-alb-sg" {
  name   = "my-alb-sg"
  vpc_id = "${var.vpc_id}"
}
