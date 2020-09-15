
module "ec2" {
  source         = "./ec2"
  my_public_key  = "/home/ec2-user/.ssh/id_rsa.pub"
  instance_type  = "t2.micro"
  security_group = "${module.vpc.security_group}"
  subnets        = "${module.vpc.public_subnets}"
}
