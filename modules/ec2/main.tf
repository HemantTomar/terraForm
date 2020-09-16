

data "aws_availability_zones" "available" {}
#commenting below beacause it will ask for subscription for market place ,so i will use ami as hardcoded

/* data "aws_ami" "centos" {
  owners      = ["679593333241"]
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

*/
data "template_file" "init" {
  template = file("${path.module}/userdata.tpl")
}

resource "aws_instance" "my-test-instance" {
  count                  = 2
  #using hardcoded ami 
  ami                   = "ami-0c94855ba95c71c99"
  #commented ami from data source
 # ami                    = data.aws_ami.centos.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.mytest-key.id
  vpc_security_group_ids = [var.security_group]
  subnet_id              = element(var.subnets, count.index )
  user_data              = "data.template_file.init.rendered

  tags = {
    Name = "my-instance-${count.index + 1}"
  }
}
