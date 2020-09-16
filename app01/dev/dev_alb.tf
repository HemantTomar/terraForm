module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id
  instance1_id = module.ec2.instance1_id
  instance2_id = module.ec2.instance2_id
  subnet1 = module.vpc.subnet1
  subnet2 = module.vpc.subnet2
}
