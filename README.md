# terra_a
# Directory Structure 
   .
├── modules
│   ├── ec2
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── vars.tf
│   │   ├── versions.tf
│   │   └── userdata.tpl
│   ├── alb
│   │   ├── main.tf
│   │   └── vars.tf
│   └── vpc
│       ├── private_subnet.tf
│       ├── private_route_table.tf
│       ├── main.tf
│       ├── eip.tf
│       ├── nat_gateway.tf
│       ├── internet_gateway.tf
│       ├── output.tf
│       ├── private_subnet_a_private_route.tf
│       ├── public_route_table.tf
│       ├── public_subnet_a_public_route.tf
│       ├── public_subnet.tf
│       ├── security_group.tf
│       ├── vars.tf
│       └── versions.tf
├── app01
│   └── dev
│       ├── terraform.tfstate
│       ├── terraform.tfstate.backup
│       ├── graph.svg
│       ├── main.tf
│       ├── dev_alb.tf
│       ├── dev_ec2.tf
│       ├── dev_vpc.tf
│       ├── vars.tf
│       ├── versions.tf
│       └── terraform.tfvars
├── LICENSE
└── README.md




